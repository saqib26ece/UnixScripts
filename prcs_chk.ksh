#!/bin/bash
rm email.txt
for prcs in `cat input.txt`
do
ps -aef |grep -v grep|grep ${prcs} >> /dev/null
RC=$?
if [ $RC -eq 0 ]
then
     echo "process $prcs is in progress" >> email.txt
else
        echo "process $prcs is not in progress" >> email.txt
fi
done

