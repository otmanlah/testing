#!/bin/bash

cd /home/vboxuser/tp/shell_script/
mkdir Root



dirlist=$(ls -d */)

for dir in $dirlist
do
	echo "nom du dossier : $dir"
	cd /home/vboxuser/tp/shell_script/$dir

	for file in *
	do
        	if [ -f "$file" ]; then
                	
                	prefix=$(echo "$file"| cut -d '_' -f1)
			year=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f1)
			month=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f2)
			day=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f3)
                	hour=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f4)
			minute=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f5)
			seconde=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f6)
			milliseconde=$(echo "$file"| cut -d '_' -f2 | cut -d '-' -f7 | cut -d '.' -f1)
			nvnom="$minute$seconde$milliseconde"
			#script_name=$(basename "$_")	

			echo "prefix : $prefix"
			echo "année : $year"
			echo "mois : $month"
        		echo "jour : $day"
			echo "heure : $hour"
			echo "nouveau nom : $nvnom"
			
			cd ~/tp/shell_script/Root
			mkdir -p $dir/$prefix/$year/$month/$day/$hour
			cd ~/tp/shell_script/$dir
			echo -e "$file\n~/tp/shell_script/$dir" > $nvnom.dat
			rm ~/tp/shell_script/$dir/$file
			mv $nvnom.dat ~/tp/shell_script/Root/$dir/$prefix/$year/$month/$day/$hour
			#echo "$script_name"

		fi
	done

done
