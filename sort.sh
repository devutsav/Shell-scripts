echo "Enter the no of elements"
read a

echo "Enter the elements"
for ((i=0;i<$a;i++))
do
	read arr[$i]
done


for ((i=0;i<$a;i++)) do
	for ((j=0;j<$a;j++)) do
		if [ ${arr[$i]} -lt ${arr[$j]} ] 
		then
			
			      t=${arr[$i]}
                 	      arr[$i]=${arr[$j]}
                              arr[$j]=$t
		fi
	done
done

echo "Sorted list is"
for ((i=0;i<$a;i++))
do
	echo ${arr[$i]}
done

