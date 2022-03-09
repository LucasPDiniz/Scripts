param($ip)

if(!$ip) {
    echo "Exemple - .\ portscan.ps1 192.168.0.1 80"
}else{
$topports = 21,22,80,333
try {foreach ($port in $topports){

if (Test-NetConnection $ip -Port $port -WarningAction SilentlyContinue -InformationLevel Quiet) {

    echo "Port $port open"
    }}else{
    echo "Port $port closed"
    }
    } catch{}
}
