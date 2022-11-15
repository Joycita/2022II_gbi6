## Ejercicio 1.10.3 Plant-Pollinator Networks ##
##1.Write a script that takes one of these files and determines the number of rows (pollinators) and columns (plants)##
echo " 1. Write a script that takes one of these files and determines the number of rows (pollinators) and columns (plants)"
cd ../../../../../unix/data

echo "Para n1.txt"
cat Saavedra2013/n1.txt | wc -l
head -n 1 Saavedra2013/n1.txt | tr -d ' ' | tr -d '\n' | wc -c

echo "Para n59.txt"
cat Saavedra2013/n59.txt | wc -l
head -n 1 Saavedra2013/n59.txt | tr -d ' ' | tr -d '\n' | wc -c


##2.[Advanced]Write a script that prints the numbers of rows and columns for each network##
echo "[Advanced]Write a script that prints the numbers of rows and columns for each network:"

for z in Saavedra2013/*.txt;
do
	Filitas=`cat $z | wc -l`;
	echo "Archivos:" $z "Filitas:" $Filitas;
done

for z in Saavedra2013/*.txt;
do 
	Columnitas=`head -n 1 $z | tr -d ' ' | tr -d '\n' | wc -c`;
	echo "Archivos:" $z "Columnitas:" $Columnitas;
done

##3.Which file has the largest number of rows? Which has the largest number of columns?##
echo "Which file has the largest number of rows? Which has the largest number of columns?"

echo "Mayor número de columnas"
bash  Todaslascositas.sh | sort -n -r -k 3 | head -n 1

echo "Mayor número de filas"
bash  Todaslascositas.sh | sort -n -r -k 2 | head -n 1
