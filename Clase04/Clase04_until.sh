## Ejercicio 1.10.3 Plant-Pollinator Networks ##
##1.Write a script that takes one of these files and determines the number of rows (pollinators) and columns (plants)##
echo " 1. Write a script that takes one of these files and determines the number of rows (pollinators) and columns (plants)"
cd ../../../../../unix/data
wc -l Saavedra2013/n1.txt 

cat Saavedra2013/n1.txt | wc -l
cat Saavedra2013/n59.txt | wc -l

echo -e "\n"
head -n 1 Saavedra2013/n1.txt
head -n 1 Saavedra2013/n59.txt

head -n 1 Saavedra2013/n1.txt | tr -d ' ' | tr -d '\n' | wc -c
head -n 1 Saavedra2013/n59.txt | tr -d ' ' | tr -d '\n' | wc -c

##2.[Advanced]Write a script that prints the numbers of rows and columns for each network:##
echo "[Advanced]Write a script that prints the numbers of rows and columns for each network:"
Files=Saavedra2013/*.txt

for c in $Files
do
	Filitas=`cat $c | wc -l`
	Columnitas=`head -n 1 $l |tr -d ' ' | tr -d '\n' | wc -c`
	echo "Archivos:" $l "Filas:" $Filitas "Columnas:" $Columnitas
done

##3.Which file has the largest number of rows? Which has the largest number of columns?##
echo "Which file has the largest number of rows? Which has the largest number of columns?"
echo "Mayor número de columnas"
bash netsize_all.sh  | sort -n -r -k 3 | head -n 1

echo "Mayor número de filas"
bash netsize_all.sh | sort -n -r -k 2 | head -n 1
