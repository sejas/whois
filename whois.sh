for linea in $(cat dominios.ws)
do
echo analizando $linea
	whois $linea > temp.txt
	#if [ `cat temp.txt | grep "No match"|wc` -eq 1 ]
	comando=`cat temp.txt | grep "No match"|wc -l`
	if [ "$comando" -eq 1 ]
	then
		mv temp.txt $linea
		echo NO REGISTRADO $linea
	fi
done
