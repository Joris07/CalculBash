#! /bin/bash

echo "Bienvenue dans ma Calculatrice en Bash"

continue=1
while test $continue -eq 1
do

echo " "

echo "Sélectionnez une opération : "
echo "1. Addition"
echo "2. Soustraction"
echo "3. Multiplication"
echo "4. Division"

echo " "

echo "Entrez le numéro de l'opération :"
read operation

echo " "
echo "Entrez le premier nombre :"
read nbOne

echo " "
echo "Entrez le deuxième nombre :"
read nbTwo

echo " "

# Si le résultat = 1 on fait une addition
if test $operation -eq 1
then echo resultat : $((nbOne + nbTwo))

elif test $operation -eq 2
then echo resultat : $((nbOne - nbTwo))

elif test $operation -eq 3
then echo resultat : $((nbOne * nbTwo))

elif test $operation -eq 4
then echo resultat : $((nbOne / nbTwo))

else echo "Veuillez indiquer une opération valide"
fi

#Pull request d'Antonin
echo " "
echo "Voulez-vous effectuer une autre opération ? (Oui/Non) :"
read response

if test $response == "Oui"
then continue=1

elif test $response == "Non"
then continue=0

fi

done
