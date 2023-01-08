#!/bin/bash
# For loop with number range
# Args 1 Bootcamp Days
# Args 2 GPU ID
# Args 3 Image Name
for i in {0..1}
do
	docker run --gpus '"device='"${2}"':'"${i}"'"' -d -p $1$200$i:8888 --name bootcamp$1-$2-$i $3
done
