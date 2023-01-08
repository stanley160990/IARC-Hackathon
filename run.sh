#!/bin/bash
# For loop with number range
# Args 1 Bootcamp Days
# Args 2 GPU ID
# Args 3 Image Name
arrVar=()

for i in {0..7}
do
	docker run --gpus '"device='"${2}"':'"${i}"'"' -d -p $1$200$i:8888 --name bootcamp$1-$2-$i $3

	arrVar[${#arrVar[@]}]="http://domain:$1$200$i"
done

for value in "${arrVar[@]}"
do	 
	echo "URL Akses"
	echo $value
done
