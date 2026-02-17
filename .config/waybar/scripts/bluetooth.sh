#!/usr/bin/env bash
#
# Scan, select, pair, and connect to Bluetooth devices
#
# Requirements:
# - bluetoothctl (bluez-utils)
# - fzf
# - notify-send (libnotify)

TIMEOUT=10

cprintf() {
	printf "\e[31m"
	printf "%b\n" "$@"
	printf "\e[39m"
}

power_on() {
	local state
	state=$(bluetoothctl show | awk '/PowerState/ {print $2}')

	case $state in
		off)
			bluetoothctl power on > /dev/null
			;;
		off-blocked)
			rfkill unblock bluetooth

			local new_state
			local i=1

			for (( ; i <= TIMEOUT; i++)); do
				printf "\rDesbloqueando Bluetooth... (%d/%d)" $i $TIMEOUT

				new_state=$(bluetoothctl show | awk '/PowerState/ {print $2}')
				if [[ $new_state == on ]]; then
					break
				fi

				sleep 1
			done

			if [[ $new_state != on ]]; then
				notify-send "Bluetooth" "Fallo al desbloquear" -i "package-purge"
				exit 1
			fi
			;;
		*)
			return 0
			;;
	esac

	notify-send "Bluetooth On" -i "network-bluetooth-activated" \
		-h string:x-canonical-private-synchronous:bluetooth
}

get_devices() {
	bluetoothctl -t $TIMEOUT scan on > /dev/null &

	local num
	local i=1

	for (( ; i <= TIMEOUT; i++)); do
		printf  "\rBuscando dispositivos... (%d/%d)" $i $TIMEOUT
		cprintf "\nPResiona [q] para parar"

		num=$(bluetoothctl devices | grep -c "Device")
		printf "\nDispositivos: %d" "$num"
		printf "\e[3F"

		read -rsn 1 -t 1
		if [[ $REPLY == [Qq] ]]; then
			break
		fi
	done

	cprintf "\nEscaneo pausado.\n"

	LIST=$(bluetoothctl devices | sed "s/^Device //")
	if [[ -z $LIST ]]; then
		notify-send "Bluetooth" "No se encontraron dispositivos" -i "package-broken"
		exit 1
	fi
}

select_device() {
	local header
	printf -v header "%-17s %s" "Dirección" "Nombre"

	local options=(
		"--border=sharp"
		"--border-label= Bluetooth Devices "
		"--ghost=Search"
		"--header=$header"
		"--height=~100%"
		"--highlight-line"
		"--info=inline-right"
		"--pointer="
		"--reverse"
	)

	ADDRESS=$(fzf "${options[@]}" <<< "$LIST" | awk '{print $1}')
	if [[ -z $ADDRESS ]]; then
		exit 1
	fi

	local connected
	connected=$(bluetoothctl info "$ADDRESS" | awk '/Connected/ {print $2}')

	if [[ $connected == yes ]]; then
		notify-send "Bluetooth" "Ya estás conectado a ese dispositivo" \
			-i "package-install"
		exit 1
	fi
}

pair_and_connect() {
	local paired
	paired=$(bluetoothctl info "$ADDRESS" | awk '/Paired/ {print $2}')

	if [[ $paired == no ]]; then
		printf "Emparejando..."

		if ! timeout $TIMEOUT bluetoothctl pair "$ADDRESS" > /dev/null; then
			notify-send "Bluetooth" "Fallo al emparejar" -i "package-purge"
			exit 1
		fi
	fi

	printf "\nConectando..."

	if ! timeout $TIMEOUT bluetoothctl connect "$ADDRESS" > /dev/null; then
		notify-send "Bluetooth" "Fallo al conectar" -i "package-purge"
		exit 1
	fi

	notify-send "Bluetooth" "Conectado con éxito" -i "package-install"
}

main() {
	# hide cursor
	printf "\e[?25l"

	power_on
	get_devices

	# unhide cursor
	printf "\e[?25h"

	select_device
	pair_and_connect
}

main
