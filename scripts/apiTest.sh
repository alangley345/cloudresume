#!/bin/bash

request1=$(curl https://api.aaronlangley.net/getCount | jq '.body.Item.visits')
curl https://api.aaronlangley.net/updateCount
request2=$(curl https://api.aaronlangley.net/getCount | jq '.body.Item.visits')

if [[ $request2 > $request1 ]]
        then
            echo 'Cloudresume APIs are working'
            aws dynamodb update-item \
            --table-name resume.aaronlangley.net \
            --key {\"event\":{\"S\":\"prod\"}} \
            --update-expression "set #visits = #visits - :inc" \
            --expression-attribute-names {\"\#visits\":\"visits\"} \
            --expression-attribute-values {\":inc\":{\"N\":\"1\"}} 
            
        else
            echo 'Check your APIs again'
fi