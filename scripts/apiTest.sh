#!/bin/bash

request1=$(curl https://api.aaronlangley.net/getCount | jq '.body.Item.visits')
curl https://api.aaronlangley.net/updateCount
request2=$(curl https://api.aaronlangley.net/getCount | jq '.body.Item.visits')

if [[ $request1 > $request ]]
        then
            echo 'Cloudresume APIs are working'
            aws dynamodb update-item \
            --table-name resume.aaronlangley.net \
            --key "{"event": "{"S":"test"}"}" \
            --update-expression "set visits = visits - :inc" \
            --expression-attribute-names '{"N":"Visits"}'
            --expression-attribute-values '{":inc":1}'
        else
            echo 'Check your APIs again'
fi
