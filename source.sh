#!/bin/sh

##########################
# Extract source code from NetLogo-models and write it to files
# usage source.sh config
##
# config is a file each line contains the path to a model and the path to to where the source code should be stored


cat $1 | while read model code
do
	LN=`grep -n "\@\#\$\#\@\#\$\#\@" $model | head -n 1 | awk -F ':' '{print $1}'`
	LN="$((LN - 1))"
	head -n $LN $model > $code
done

#echo $1
#LN=`grep -n "\@\#\$\#\@\#\$\#\@" $1 | head -n 1 | awk -F ':' '{print $1}'`
#echo $LN
#LN="$((LN - 1))"
#echo $LN
#head -n $LN $1 > $2
