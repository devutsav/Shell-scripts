echo "Enter directory name"
read a
cd $a
ls -l | grep -v "^d" 
ls -l | grep -v "^-" 
