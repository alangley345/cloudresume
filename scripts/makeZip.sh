#!/bin/bash

if [[ -f "../terraform/updateCount.py" ]]
then
        zip ../terraform/updateCount.zip ../terraform/updateCount.py
else
    echo "Missing updateCount.py"
fi

if [[ -f "../terraform/getCount.py" ]]
then
        zip ../terraform/getCount.zip ../terraform/getCount.py
else
    echo "Missing getCount.py"
fi