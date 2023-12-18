#Develop a shell script that takes a valid directory name as an argument and recursively descend all the sub-directories, finds the maximum length of any file in that hierarchy, and store the output in a file.





#! /bin/bash
 for i in $*
   do
      if [ -d $i ]
         then
             echo "large filename size is"
             echo `ls -lR $1 | grep "^-" | tr -s ' ' | cut -d' ' -f 5 | sort -n| tail -1`
       else
             echo "not directory"
       fi
      done


#cho `ls -lR $1 | grep "^-" | tr -s ' ' | cut -d' ' -f 5 | sort -n| tail -1`  -------

#ls -lR $1: Lists files in the specified directory recursively with detailed information.
# grep "^-": Filters only regular files (excluding directories and other types).
# tr -s ' ': Squeezes multiple spaces into a single space. This is used to ensure consistent spacing in the output.
# cut -d' ' -f 5: Extracts the fifth column, which corresponds to the file size.
# sort -n: Sorts the file sizes numerically.
# tail -1: Retrieves the last (largest) file size
