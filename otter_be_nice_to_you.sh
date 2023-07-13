#!/bin/bash


echo " "
echo "> : Let The Otter do the job for you."
echo " "
echo "> : Kotaro (male otter) will check all a.out in currect directory and sub directory"
echo "########## Yum Yum Yum Mhm, (Your file is list below by Kotaro)"
echo " "

FOUND_FILE=$(find . -name "*.out" | grep "a.out" | xargs -L1 -I{} basename "{}"| wc -l)

	if [ ${FOUND_FILE} <= 0 ]
	then
		echo ">You have ${FOUND_FILE} a.out files, maybe next time"
	fi

	echo ">Kotaro found ${FOUND_FILE} File(s), He will play with it. "
echo "> : Hana femel otter like to help Kotaro "
echo ""
echo "Please give her a fresh fish and those file will delete perminanly"
echo "Please Type 'y' to Accept or 'n' to cancel"

read input

if [ "$input" == 'y' -o  "$input" == 'Y'  ]
then
	echo "Krew Krew (Hana say Thank and will share fish with Kotaro)"
	final_check=(find . -name "a.out")
	find . \( -name "a.out" -type f \) -exec rm {} + 	
		#find . -name "a.out" | exec rm {} +
	

elif [ "$input" == 'n' -o   "$input" == 'N'  ]
then
	echo "You don't want to play with cute otter ,see you next time"
	break
else
	echo "Something went wrong please try again." 
	exit 
fi

