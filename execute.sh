#!/bin/bash
# For loop with number range
for i in {0..6}
do
	echo "docker run --gpus '"device=${1}:${i}"' -d -p $2$100$i:8888 --name bootcamp$2-$1-$i bootcampepsindo:0.1"
done
