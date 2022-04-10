#!/bin/bash

result=$(ping -c 1 resume.aaronlangley.net >/dev/null)

if $result 
then
   echo 'Successfully pinged device!'
   curl --head https://resume.aaronlangley.net
else
   echo 'Ping failed!'
fi