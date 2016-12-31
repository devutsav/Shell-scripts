echo "Enter the directory or file name"   #read a directory name or file name and check if it exists in the current working dir
read a                              

if [ -d "$a" ]
then
	echo "The directory exists"
	cd "$a"
	ls -l | awk '{print $4}'
else
	echo "The directory does not exist"
fi

if [ -f "$a" ]
then 
	echo "The file exist"
elif [ ! -f "$a" ]
then
	echo "Not exist"
fi


/*Compile using *chmod 755 <filename>.sh*
  Run *./<filename>.sh*
  
  */
