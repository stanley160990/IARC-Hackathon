#!/bin/bash
# For loop with number range
# Args 1 Bootcamp Days
# Args 2 GPU ID
for i in {0..6}
do
	docker rm bootcamp$1-$2-$i
done
