!/bin/bash

tmux new-session -d -s Snake-game

tmux send-keys "nvim ~/Code/Snake-game" C-m
tmux rename-window "Code"

tmux new-window -t Snake-game:2 -n "terminal"
tmux send-keys "nvim ~/Code/Snake-game -c 'terminal'" C-m

tmux attach -t Snake-game
