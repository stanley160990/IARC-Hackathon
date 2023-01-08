#!/bin/bash
# For loop with number range
# Args 1 Bootcamp days
# Args 2 GPU Device
for i in {0..7}
do
	docker stop bootcamp$1-$2-$i
done
