#!/bin/bash

while true
do
        git config commit.gpgsign false
        git add .
        git commit -m "auto backup $(date)"
        git push

    sleep 1200

done
