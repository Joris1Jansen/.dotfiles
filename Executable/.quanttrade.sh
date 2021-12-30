#!/bin/sh

function quanttrade() {
    while getopts a: flag
    do
        case "${flag}" in
            a) API=${OPTARG};;
        esac
    done

    if [ -z "$API" ]; then
        
        echo "No API given"
        
        # Set session name
        SESSION=$1

        # Echo session name
        echo $SESSION
    
	    # Check if session exists.
        SESSION_EXISTS=$(tmux list-sessions | grep $SESSION)

        # Only create tmux session if it doesn't already exist.
        if [ "$SESSION_EXISTS" = "" ]; then
            # Path variable                                                               
            PATH_BASE="~/QuantTrade/Code/quanttrade-"                                     
            PATH_FULL="$PATH_BASE$SESSION"

            # Start New Session with our name.
            tmux new -s $SESSION -d

            # Window 1: api.
            tmux rename-window -t $SESSION:1 'ui'
            tmux send-keys -t $SESSION 'cd '$PATH_FULL C-m 'clear' C-m

            # Window 2: util.
            tmux new-window -t $SESSION:2 -n 'util'
            tmux send-keys -t $SESSION 'cd '$PATH_FULL C-m 'clear' C-m

            # Window 3: Vim
            tmux new-window -t $SESSION:3 -n 'nvim'
            tmux send-keys -t $SESSION 'cd '$PATH_FULL C-m 'clear' C-m 'nvim .' C-m
        fi
    else
	    # Check if session exists.
        SESSION_EXISTS=$(tmux list-sessions | grep $API)

        # Only create tmux session if it doesn't already exist.
        if [ "$SESSION_EXISTS" = "" ]
        then
        
            # Path variable                                                               
            PATH_BASE="~/QuantTrade/Code/quanttrade-"                                     
            PATH_CLOSE="-api"                                                             
            PATH_FULL="$PATH_BASE$API$PATH_CLOSE"

            # Start New Session with our name.
            tmux new -s $API -d

            # Window 1: api.
            tmux rename-window -t $API:1 'api'
            tmux send-keys -t $API 'cd '$PATH_FULL C-m 'clear' C-m

            # Window 2: util.
            tmux new-window -t $API:2 -n 'util'
            tmux send-keys -t $API 'cd '$PATH_FULL C-m 'clear' C-m

            # Window 3: Vim
            tmux new-window -t $API:3 -n 'nvim'
            tmux send-keys -t $API 'cd '$PATH_FULL C-m 'clear' C-m 'nvim .' C-m
        fi
    fi

    # tmux attach-session -t $API:1
}




