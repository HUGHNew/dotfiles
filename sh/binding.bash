#!/bin/sh
bind '"\e\e":"\C-asudo \C-e"' # [ESC] [ESC] to insert sudo
bind '"\e[A": history-search-backward' # up arrow for search
bind '"\e[B": history-search-forward' # down arrow for search
