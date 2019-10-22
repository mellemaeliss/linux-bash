#!/bin/bash
tes=0
moy=0
occurence=0

while [ $tes -eq 0 ];do

read -p "saisir une note:\n" note 
if [ $note == "q" ]
then
	let "$tes = 1"
elif [ $note -lt 0 ]
then
	let "$tes = 1"
else
if [ $note -ge 0 ];
then
	let "moy=$moy+$note"
	let "occurence=$occurence+1"
fi
if [ $note -le 20 ] && [ $note -ge 16 ];
then 
	echo 'tres bien'
elif [ $note -lt 16 ] && [ $note -ge 14 ];
then 
	echo 'bien'
elif [ $note -lt 14 ] && [ $note -ge 12 ];
then
	 echo 'assez bien'
elif [ $note -lt 12 ] && [ $note -ge 10 ];
then
	 echo 'moyen'
elif [ "$note" -lt 10 ] && [ "$note" -ge 0 ];
then 
	echo 'insuffisant'
else 
	echo 'erreur'
fi
let "moy=$moy/$occurence"
echo "La moyenne est de $moy sur ($occurence)"

done

