#!/bin/bash -x
echo "Welcome to Flip Coin Simulation Program"
tails=0;
heads=0;
i=0;
while [ $tails -lt 21 -a $heads -lt 21 ]
do
	TossCheck=$((RANDOM%2));
	if [ $TossCheck -eq 0 ];
	then
		tails=$(($tails+1));
		echo Tails Win;
	else
		heads=$(($heads+1));
		echo Heads Win;
	fi
done
echo "Heads Count :"$heads "and Tails Count : " $tails;
if [ $heads -gt $tails ]
then
   echo "Heads won by: " $(($heads-$tails));
else
   echo "Tails won by: "$(($tails-$heads));
fi












