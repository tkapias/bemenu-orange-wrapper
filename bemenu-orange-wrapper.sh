#!/usr/bin/env bash

#########################
# bemenu-orange-wrapper
#
# Licence: GNU GPLv3
# Author: Tomasz Kapias
#
# Dependencies:
#   bemenu v0.6.23
#   Font: Nerd-Fonts Symbols Only
#   Font: Noto Color Emoji
#   Font: IBM Plex Mono
#   bash
#
#########################

# using 3 fonts for mono, emokis and nerd-fonts
pango_fonts="Noto Color Emoji Regular 12, \
  Symbols Nerd Font Mono Regular 12, \
  IBM Plex Mono Regular 12"

# colors
trans="DF"
c_accent="#F45100"
c_bg="#2B303B"
c_bg_sel="#D43100"
c_bg_alt="#1B202B"
c_fg="#EAEAEA"
c_fg_sel="#303030"
c_fg_alt="#303549"

# coloring
fg_border="$c_accent"
bg_fg_title=(    "$c_accent"         "$c_fg_alt"    )
bg_fg_filter=(   "$c_bg"             "$c_fg"        )
bg_fg_cursor=(   "$c_bg"             "${c_fg}$trans")
bg_fg_normal=(   "${c_bg}$trans"     "$c_fg"        )
bg_fg_highlight=("$c_accent"         "$c_fg_alt"    )
bg_fg_feedback=( "$c_fg_alt"         "$c_accent"    )
bg_fg_selected=( "$c_bg_sel"         "$c_fg_sel"    )
bg_fg_alterning=("$c_bg_alt"         "$c_fg"        )
bg_fg_scrollbar=("${c_bg_alt}$trans" "${c_fg}$trans")

# global bemenu command location
if PATH=/usr/bin:/usr/local/bin command -v bemenu 1> /dev/null; then
  bemenu_cmd=$(PATH=/usr/bin:/usr/local/bin command -v bemenu)
else
  echo "ERROR: global command bemenu not found!"
  exit 1
fi

# other options
bemenu_args=(--binding vim \
    --vim-esc-exits \
    --ignorecase \
    --fixed-height \
    --list 25 \
    --center \
    --grab \
    --line-height 24 \
    --margin 200 \
    --scrollbar autohide \
    --border 3 \
    --border-radius 0 \
    --bdr "$fg_border" \
    --fn  "$pango_fonts" \
    --tb  "${bg_fg_title[0]}"     --tf  "${bg_fg_title[1]}"     \
    --fb  "${bg_fg_filter[0]}"    --ff  "${bg_fg_filter[1]}"    \
    --cb  "${bg_fg_cursor[0]}"    --cf  "${bg_fg_cursor[1]}"    \
    --nb  "${bg_fg_normal[0]}"    --nf  "${bg_fg_normal[1]}"    \
    --hb  "${bg_fg_highlight[0]}" --hf  "${bg_fg_highlight[1]}" \
    --fbb "${bg_fg_feedback[0]}"  --fbf "${bg_fg_feedback[1]}"  \
    --sb  "${bg_fg_selected[0]}"  --sf  "${bg_fg_selected[1]}"  \
    --ab  "${bg_fg_alterning[0]}" --af  "${bg_fg_alterning[1]}" \
    --scb "${bg_fg_scrollbar[0]}" --scf "${bg_fg_scrollbar[1]}")

# mostly in case of --help or --version
if [ -p /dev/stdin ]; then
  cat | "$bemenu_cmd" "${bemenu_args[@]}" "$@"
else
  "$bemenu_cmd" "${bemenu_args[@]}" "$@"
fi


