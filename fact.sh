echo "Enter the number"
read a
m=$a
fact=1
while [ $m -gt 0 ] 
do
fact=`expr $fact \* $m`
m=`expr $m - 1`
done
#z=`expr $fact \* $fact`
echo The factorial is $fact
#echo $z

