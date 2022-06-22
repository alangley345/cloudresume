#!/bin/bash

request1=$(curl https://api.aaronlangley.net/getCount | jq '.body.Item.visits')
curl https://api.aaronlangley.net/updateCount
request2=$(curl https://api.aaronlangley.net/getCount | jq '.body.Item.visits')

if [[ $request1 > $request ]]
        then
            echo 'Cloudresume APIs are working'
            aws dynamodb update-item \
            --table-name resume.aaronlangley.net \
            --key {\"event\":{\"S\":\"test\"}} \
            --update-expression "set visits = visits - :inc" \
            --expression-attribute-names {\"S\":\"visits\"} \
            --expression-attribute-values {\":inc\":{\"N\":\"1\"}}
        else
            echo 'Check your APIs again'
fi

#--update-expression 'SET #H = :h' \
#--expression-attribute-names '{"#H":"Column_name_to_change"}' \
#--expression-attribute-values '{":h":{"S":"Changed_Column_value"}}'