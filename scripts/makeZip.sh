#!/bin/bash

if [[ -f "./updateCount.py" ]]
then
        zip ../terraform/updateCount.zip updateCount.py
else
    echo "Missing updateCount.py"
fi

if [[ -f "./getCount.py" ]]
then
        zip ../terraform/getCount.zip getCount.py
else
    echo "Missing getCount.py"
fi