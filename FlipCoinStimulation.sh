#!/bin/bash -x
echo "Welcome to Flip Coin Simulation Program"
tails=0;
heads=0;
TossCheck=$((RANDOM%2));
if [ $TossCheck -eq 0 ];
then
	tails=$(($tails+1));
	echo Tails Win;
else
	heads=$(($heads+1));
	echo Heads Win;
fi
