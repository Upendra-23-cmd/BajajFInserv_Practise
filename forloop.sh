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
touch /Users/upendraverma/Desktop/programs/BajajFInserv_Practise/file1.txt file2.txt file3.txt
for files in *.txt; do
mkdir -p backup
cp "$files"  backup/
echo "files is being copied"
done


# Loop through all files in the current directory and print their extensions.
for file in *; do
[[ -f "$file" && "$file" == *.* ]] && echo "${file##*.}"
done

# Given a list of usernames: alice bob charlie,Loop through them and print: "Hello, <username>".
username=("alice" "bob" "john")
for user in "${username[@]}"; do
echo "hello $user"
done


# Loop through numbers 1–10 and calculate their sum
c=0
for i in {1..10}; do
c=$(($c+$i))
done
echo $c

#
#
#
#
#
#
#