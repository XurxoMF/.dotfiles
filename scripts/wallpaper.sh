#!/usr/bin/env bash

matugen image --mode dark --type scheme-vibrant --verbose --show-colors "$1" | sed 's/\x1B\[[0-9;]*m/ /g' > ~/.dotfiles/cores.txt