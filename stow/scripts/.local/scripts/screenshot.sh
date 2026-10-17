#!/usr/bin/env bash

dir="$HOME/Pictures/screenshots"
mkdir -p "$dir"
file="$dir/$(date +%Y-%m-%d_%H-%M-%S).png"

# Seleciona a área (Esc cancela). Para tela cheia, remova esta linha e o "-g".
geom=$(slurp) || exit 0

grim -g "$geom" "$file" || exit 1

# Copia para a área de transferência (opcional, requer wl-clipboard)
wl-copy < "$file"

# Abre a captura no feh com uma classe própria
feh --class feh-screenshot -. -Z -B black "$file" &
