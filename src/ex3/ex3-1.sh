#!/bin/bash
    num=$1
    if [ -z "$num" ]; then
        while true; do
            echo "hello world"
        done
    else
        for i in $(seq 1 $num); do
            echo "hello world"
        done
    fi

