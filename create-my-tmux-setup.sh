#!/bin/bash

# Usage: ./tmux_project.sh <session-name> <project-dir>
SESSION_NAME=$1
PROJECT_DIR=$2

if [ -z "$SESSION_NAME" ] || [ -z "$PROJECT_DIR" ]; then
  echo "Usage: $0 <session-name> <project-dir>"
  exit 1
fi

# Start new session and create first window with Neovim
tmux new-session -d -s "$SESSION_NAME" -c "$PROJECT_DIR" -n "dev" "nvim"

# Split the window horizontally for terminal
tmux split-window -h -t "$SESSION_NAME:0" -c "$PROJECT_DIR"

# Create second window with lazygit
tmux new-window -t "$SESSION_NAME" -n "git" -c "$PROJECT_DIR" "lazygit"

# Attach to session
tmux attach -t "$SESSION_NAME"

