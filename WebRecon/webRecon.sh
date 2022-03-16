#!/bin/bash

RED='\033[31;1m'
GREEN='\033[32;1m'
BLUE='\033[34;1m'
YELLOW='\033[33;1m'
RED_BLINK='\033[31;5;1m'
END='\033[m'

if [ "$1" == "" ] || [ "$2" == "" ]  
then
	echo ""
	echo -e "${YELLOW}- - - - WEBRECON 1.0 - - - - ${END}"
	echo -e "Enter argument - Exemple : ${YELLOW} Host + File extension (TXT,PDF,DOC,DOCX,JPG,XLSX) ${END}/ Use ${RED_BLINK}WORDLIST.TXT ${END}"
	
	else

		echo ""
		echo -e "${YELLOW}- - - - WEBRECON 1.0 - - - - ${END}\n"
		echo "Choice - [1]-Search Files [2]-Search Directories"
		read option

		if [ "$option" != "1" ] && [ "$option" != "2" ]
		then
		echo "Error - Choice optin [1] or [2]"
				else


				if [ "$option" == "2" ]
					then
					echo ""
					echo ""
					echo -e " ${GREEN}- Searching Directories ${END}"
					echo -e "${GREEN}------------------------------------------------------------------------------------${END}"
					echo ""
						for word in $(cat wordlist.txt)
						do
						resp=$(curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0" -o /dev/null -w "%{http_code}" $1/$word/)
							if [ $resp == "200" ]
							then
							echo -e "Diretory found:${RED} $1/$word  ${END}"
							fi
						done
				fi


				if [ "$option" == "1" ]
					then
					echo -e " ${GREEN}- BruteForce files started ${END}"
					echo -e "${GREEN}------------------------------------------------------------------------------------${END}"
						for word in $(cat wordlist.txt)
						do
						resp2=$(curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0" -o /dev/null -w "%{http_code}" $1/$word.$2)
							if [ $resp2 == "200" ]
							then
							echo -e "File found:${RED} $1/$word.$2 ${END}"
							fi
						done
			
			
		fi

				fi
fi