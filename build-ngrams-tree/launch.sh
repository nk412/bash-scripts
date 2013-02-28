#!/bin/bash
for f in $(./return_words.sh);
do
	echo $f
	word=$(echo $f | awk 'BEGIN{FS=":"}{print $1}');
	for second in $(./return_words.sh "$word ");
	do
		sofar="$word $second";
		echo "  $sofar";

				word2=$(echo $sofar | awk 'BEGIN{FS=":"}{print $1}');
				for third in $(./return_words.sh "$word2");
				do
					sofar3="  $word2 $third";
					echo "     $sofar3";
				done;



	done;
done;



#!/bin/bash
#for f in $(./return_words.sh);
#do
#	echo $f
#	word=$(echo $f | awk 'BEGIN{FS=":"}{print $1}');
#	for second in $(./return_words.sh "$word ");
#	do
#		sofar="$word $second";
#		echo "  $sofar";
#
#				word2=$(echo $sofar | awk 'BEGIN{FS=":"}{print $1}');
#				for third in $(./return_words.sh "$word2");
#				do
#					sofar3="  $word2 $third";
#					echo "     $sofar3";
#				done;
#	done;
#done;
