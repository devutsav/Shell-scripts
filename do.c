read est   //Needs to be debugged
count=0
c=0

for (( j = 0 ; j < $est ; j = j+1 ))
do
    read a b
    for (( i = $a ; i <= $b ; i = i+1 ))
    do
	c = $(( i%2 ))
        if [ $c -eq 0 ]
        then
		   count =`expr $count + 1`
        
	else
	   count = 0
	fi
	echo $count;
    done
    count=0
done
