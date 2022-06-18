#!/bin/sh

function dts() {
    #SET SESSION NAME
    SESSION="dts"

    #CHECK IF SESSION EXISTS
    SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

    # Only create tmux session if it doesn't already exist.
    if [ "$SESSIONEXISTS" = "" ]
    then
        # Start New Session with our name.
        tmux new-session -d -s $SESSION

        # Window 1: Api.
        tmux rename-window -t 1 'api'
        tmux send-keys -t 'api' 'cd ~/code/ISPnext/data_transfer_server' C-m  'workon dts' C-m 'clear' C-m

        # Window 2: test.
        tmux new-window -t $SESSION:2 -n 'test'
        tmux send-keys -t 'test' 'cd ~/code/ISPnext/data_transfer_server' C-m 'workon dts' C-m 'clear' C-m

        # Window 3: nvim.
        tmux new-window -t $SESSION:3 -n 'nvim'
        tmux send-keys -t 'nvim' 'cd ~/code/ISPnext/data_transfer_server' C-m 'clear' C-m


        # Window 9: util.
        tmux new-window -t $SESSION:9 -n 'util'
        tmux send-keys -t 'util' 'cd ~/code/ISPnext/data_transfer_server' C-m 'clear' C-m
    fi

    # Attach Session, on the Main window
    tmux attach-session -t $SESSION:1
}
