#storing the number to be checked 

number=3 
while true
do

    i=2 

    #flag variable 
    f=0 

    #running a loop from 2 to number/2 
    while test $i -le `expr $number / 2` 
    do

	#checking if i is factor of number 
	if test `expr $number % $i` -eq 0 
	then
	    f=1 
	fi

	#increment the loop variable 
	i=`expr $i + 1` 
    done
    if test $f -eq 1 
    then
	echo "$number is NOT Prime at $(date +%s)"
    else
	echo "$number is Prime at $(date +%s)"
    fi
    (( number+=1 ))
    echo checking $number
done
