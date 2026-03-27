#!/bin/bash

TEMPLATE_SRC="$HOME/.claude/settings.project.json"
PROJECT_DIR=".claude"
CONF_FILE="$PROJECT_DIR/settings.json"
LOCAL_FILE="$PROJECT_DIR/settings.local.json"

if [ ! -d "$PROJECT_DIR" ]; then
    mkdir -p "$PROJECT_DIR"
    if [ -f "$TEMPLATE_SRC" ]; then
        cp "$TEMPLATE_SRC" "$CONF_FILE"
        echo "load [project] settings.json from [user] preset"
    fi
else
    if [ ! -f "$CONF_FILE" ] && [ ! -f "$LOCAL_FILE" ]; then
        if [ -f "$TEMPLATE_SRC" ]; then
            cp "$TEMPLATE_SRC" "$CONF_FILE"
            echo "load [project] settings.json from [user] preset"
        fi
    else
        exit 0
    fi
fi
