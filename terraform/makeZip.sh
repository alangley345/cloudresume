#!/bin/bash


if [[ -f "updateCount.py" ]]
then
        zip updateCount.zip updateCount.py
else
    echo "Missing updateCount.py"
fi

if [[ -f "getCount.py" ]]
then
        zip getCount.zip getCount.py
else
    echo "Missing getCount.py"
fi