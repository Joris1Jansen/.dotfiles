#!/usr/bin/env bash

languages=$(echo "go python javascript typescript nodejs tmux bash lua zsh rust dart" | tr " " "\n")
core_utils=$(echo "find xargs sed awk man tr head tail git git-worktree ssh cat docker docker-compose make chown chmod cp mv terraform aws" | tr " " "\n")

selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "GIMME YO QUERY: " query

if echo "$languages" | grep -qs $selected; then
    tmux split-window -p 32 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    tmux split-window -p 32 -h bash -c "curl cht.sh/$selected-$query | less"
    curl cht.sh/$selected~$query
fi

