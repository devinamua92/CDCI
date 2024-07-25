#!/bin/bash

echo "Running automation..." > ./output_log.txt

echo "" >> ./output_log.txt
echo "Checking uptime..." >> ./output_log.txt
echo $(uptime) >> ./output_log.txt

echo "THIS IS MY UPDATED SCRIPT" >> ./output_log.txt
echo "THIS IS MY NEW CODE" >> ./output_log.txt
echo "THIS IS MY TEST" >>./output_log.txt

echo "CDCI process completed successfully."
