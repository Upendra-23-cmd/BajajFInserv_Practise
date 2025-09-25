# print 1-10 no. on the screen
for i in 1 2 3 4 ; do
echo "$i"
done

# Rules for writing the for loop
#                                way to declare "for" loop :
#                                                   for variable in list; do
#                                                           commands
#                                                   done
echo ""
# Rules
# 1.) must include do ... done in the for loop
# 2.) list can be numbers (1,2,3,4,5) , files(*.txt) or array({a,d,v,b})
# 3.) varible name can be anything but must be meaningful
# 4.) always seperate do from for loop when declareing




# list all the files and directory in /etc directory
files=$(ls /etc)
for file in $files; do
echo "The file in /etc is $file"
done


# Given files: file1.txt, file2.txt, file3.txt,Loop through them and copy each to /backup folder.
file=$(touch /Users/upendraverma/Desktop/programs/BajajFInserv_Practise/file1.txt file2.txt file3.txt)
for files in $file; do
cp $files /backup
echo "files is being copied"
done
#
#
#

#
#
#
#
#
#
#