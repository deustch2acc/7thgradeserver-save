#!/bin/bash
THRESHOLD=25

while true
do
    CHANGED=$(git status --porcelain | wc -1)

    if [ "$CHANGED" -ge
"$THRESHOLD" ]; then
        git add .
        git commit -m "auto backup $(date)"
        git push
    fi

    sleep 600

done
