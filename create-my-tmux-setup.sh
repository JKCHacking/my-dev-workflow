#!/bin/bash

# Usage: ./tmux_project.sh <session-name> <project-dir>
SESSION_NAME=$1
PROJECT_DIR=$2

tmux has-session -t $SESSION 2>/dev/null

if [ $? != 0 ]; then
    if [ -z "$SESSION_NAME" ] || [ -z "$PROJECT_DIR" ]; then
      echo "Usage: $0 <session-name> <project-dir>"
      exit 1
    fi

    # Start new session and create first window with Neovim
    tmux new-session -d -s "$SESSION_NAME" -n "nvim"
    tmux send-keys -t $SESSION_NAME:"nvim" "cd $PROJECT_DIR && nvim" C-m
    # Split the window vertically for terminal
    tmux split-window -h -t $SESSION_NAME:"nvim"
    tmux send-keys -t $SESSION_NAME:"nvim.1" "cd $PROJECT_DIR && clear" C-m

    # Create second window with lazygit
    tmux new-window -t "$SESSION_NAME" -n "git"
    tmux send-keys -t $SESSION_NAME:"git" "cd $PROJECT_DIR && lazygit" C-m
fi


# Attach to session
tmux attach -t "$SESSION_NAME"

