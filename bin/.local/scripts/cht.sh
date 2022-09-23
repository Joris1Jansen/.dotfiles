#!/usr/bin/env bash

languages=$(echo "go python javascript typescript rust dart" | tr " " "\n")
core_utils=$(echo "find xargs sed awk" | tr " " "\n")

selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "GIMME YO QUERY: " query

if echo "$languages" | grep -qs $selected; then
    tmux split-window -p 32 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    tmux split-window -p 32 -h bash -c "curl cht.sh/$selected-$query | less"
    curl cht.sh/$selected~$query
fi

