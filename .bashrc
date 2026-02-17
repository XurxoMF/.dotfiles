# shellcheck shell=bash
#
# ⚠️ DON'T EDIT THIS FILE, IT'S A SIMPLE LOADER
# 
# If you need custom configs add them to
# ~/.config/bashrc/custom or to the
# ~/.bashrc-custom file.
#
# If you use the ~/.config/bashrc/custom folder
# I recommend you to use the 00-name to 100-name
# file names.
#

for f in ~/.config/bashrc/*; do
  if [ ! -d "$f" ]; then
    # shellcheck source=/dev/null
    [ -f "$f" ] && source "$f"
  fi
done

for f in ~/.config/bashrc/custom/*; do
  if [ ! -d "$f" ]; then
    # shellcheck source=/dev/null
    [ -f "$f" ] && source "$f"
  fi
done

if [ -f ~/.bashrc_custom ]; then
  # shellcheck source=/dev/null
  source ~/.bashrc_custom
fi