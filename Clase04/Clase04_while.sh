## Exercise 1.10.2 Hormone levels in Baboons" 

##1. How many times were the levels of individuals 3 and 27 recorded?##
echo "1. How many times were the levels of individuals 3 and 27 recorded?" 
cd ../../../../unix/data

head n -3 Guesquiere2011_data.csv
cut -f 1 Guesquiere2011_data.csv | head -n 3
echo "Male ID:3"
cut -f 1 Guesquiere2011_data.csv | grep -c -w 3
echo "Male ID:27"
cut -f 1 Guesquiere2011_data.csv | grep -c -w 27


##2. Write a script taking as input the file name and the ID of the individual, and returning the number of records for that ID.## 
echo "2. Write a script taking as input the file name and the ID of the individual, and returning the number of records for that ID."
echo "Male ID:3"
bash count_baboons.sh Gesquiere2011_data.csv 3
echo "Male ID:27"
bash count_baboons.sh Gesquiere2011_data.csv 27
## cut -f 1 $1 | grep -c -w $2##
## $1  filename and $2 ID##

##3. [Advanced] Write a script that returns the number of times each individual was sampled.##
echo "3. [Advanced] Write a script that returns the number of times each individual was sampled."
echo "times each individual was sampled"
tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq
IDS= `tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq`
echo "BUCLE"
for id in $IDS
do
	mycounts=`bash count_baboons.sh ../data/Gesquiere2011_data.csv $id`
	echo "ID:" $id "counts:" $mycounts
done

