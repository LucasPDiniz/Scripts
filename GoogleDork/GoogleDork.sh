#!/bin/bash
# Using google, this bash will perform a search using firefox browser.
# Exemple: .\GoogleDork.sh cnn.com

search="firefox"
alvo="$1"

echo "Admin Page"
$search "https://google.com.br/search?q=site:$alvo/adminPanel.php" 2> /dev/null
$search "https://google.com.br/search?q=site:$alvo/admin" 2> /dev/null
$search "https://google.com.br/search?q=site:$alvo/wp-admin" 2> /dev/null
$search "https://google.com.br/search?q=site:$alvo+inurl:admin" 2> /dev/null

echo "Pastebin"
$search "https://google.com.br/search?q=site:pastebin.com+$alvo" 2> /dev/null
echo "Trello"
$search "https://google.com.br/search?q=site:trello.com+$alvo" 2> /dev/null
echo "Files"
$search "https://google.com.br/search?q=site:$alvo+ext:php+or+ext:asp+or+ext:txt" 2> /dev/null