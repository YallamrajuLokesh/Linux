#!/bin/bash
echo “ 10 levels of folders  are created for the departments and  10 levels of files created for student details” #used for displaying text
i=1
while [ $i -le 10 ] # $i is same as initializing and le represents lesser than equal to
do
mkdir MSRITDEPT$i #creating directory
cd MSRITDEPT$i #changing to the directory
j=1
while [ $j -le 20 ]
do
touch MSRITStudentDetails$j #creating a file
j=$(($j+1))
done 
cd ..
i=$(($i+1))
done

