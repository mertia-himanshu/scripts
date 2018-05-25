
# Time Arithmetic
TIME1="05:30:20"
TIME2="06:31:50"

# Convert the times to seconds from the Epoch

SEC1=`date -j -f '%T' $TIME1 "+%s"`
#echo $SEC1
SEC2=`date -j -f '%T' $TIME2 "+%s"`
#echo $SEC2

# Use expr to do the math, let's say TIME1 was the start and TIME2 was the finish
DIFFSEC=`expr ${SEC2} - ${SEC1}`
#echo $DIFFSEC
#
echo Start ${TIME1}
echo Finish ${TIME2}
#
echo Took ${DIFFSEC} seconds.
#
## And use date to convert the seconds back to something more meaningful
#out='%02d:%02d:%02d' $(($DIFFSEC/3600)) $(($DIFFSEC%3600/60)) $(($DIFFSEC%60))
result=$(printf '%02d:%02d:%02d' $(($DIFFSEC/3600)) $(($DIFFSEC%3600/60)) $(($DIFFSEC%60)))
echo Result ${result}
