  GNU nano 5.6.1                    FlipCoinStimulation.sh                     Modified

  
#!/bin/bash -x
echo "Welcome to Flip Coin Simulation Program"
tails=0;
heads=0;
read -p "Enter how many times to flip the coin: " n
for (( i=0 ; i<$n ; i++ ))
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
echo "Number of times Heads won: " $heads
echo "Number of times Tails won: " $tails


















