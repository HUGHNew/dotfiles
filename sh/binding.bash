#!/bin/sh
bind '"\e\e":"\C-asudo \C-e"' # [ESC] [ESC] to insert sudo
bind '"\e[A": history-search-backward' # copy from inputrc
bind '"\e[B": history-search-forward'
