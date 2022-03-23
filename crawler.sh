#!/bin/bash
echo num: $1 start: $2 break-after: $3
python3 arxiv_daemon.py --num $1 -s $2 -b $3

if [ $? -eq 0 ]; then
    echo "New papers detected! Running compute.py"
    python3 compute.py
else
    echo "No new papers were added, skipping feature computation"
fi
