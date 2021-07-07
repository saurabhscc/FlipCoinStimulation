#!/bin/bash -x
echo "Welcome to Flip Coin Simulation Program"
tails=0;
heads=0;
i=0;
while [ true ]
do
	TossCheck=$((RANDOM%2));
	if [ $TossCheck -eq 0 ];
	then
		tails=$(($tails+1));
		echo Tails;
	else
		heads=$(($heads+1));
		echo Heads;
	fi

	diffT=$(($tails-$heads));
	diffH=$(($heads-$tails));

	if [ $tails -ge 21 -a $diffT -ge 2  ]
	then
		echo "Tails won by: "$(($tails-$heads));
		break;
	elif [ $heads -ge 21 -a $diffH -ge 2 ]
	then
		echo "Heads won by: " $(($heads-$tails));
		break;
	fi
done
echo "Heads Count :"$heads "and Tails Count : " $tails;
