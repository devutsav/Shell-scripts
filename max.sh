echo Enter three numbers separated with spaces
read a b c
m=$c
if [ $b -lt $m ]
then 
p=$m
else 
p=$b
fi
if [ $p -lt $a ]
then
w=$a
else
w=$p
fi
echo The greatest no is $w

