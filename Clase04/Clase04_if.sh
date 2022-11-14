## Exercise 1.10.1 ##
## 1.Change directory to CSB/unix/sandbox##
cd ../../../../../unix/sandbox/
## 2. What is the size of file Marra2014_data.fasta ##
ls -lh ../data/Marra2014_data.fasta
## 3. Create a copy of Marra2014_data.fasta in the sandbox and name it my_file.fasta##
cp ../data/Marra2014_data.fasta my_file.fasta
## 4. How many contigs are classified as isogroup00036? ##
grep -c isogroup00036 my_file.fasta
## 5. Replace the original "two-spaces" delimiter with a comma ##
cat my_file.fasta | tr -s "  " "," > my_file.tmp
mv my_file.tmp my_file.fasta
## 6. How many unique isogroups are in the file?
grep '>' my_file.fasta | head -n 4
grep '>' my_file.fasta | cut -d ',' -f 4 | head -n 4
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l
## 7. Which contig has the highest number of reads (numreads)? How many reads does it have? ##
grep '>' my_file.fasta | cut -d ',' -f 1,3 | head -n 4
grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -n -k 2 | head -n 4
grep '>' my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -n -k 2 -r | head -n 1

