#Some sites may show how the method OPTIONS inappropriate, so try with GET.

# Exemple: .\webParsing.ps1
$site = Read-Host "Enter a website"
$method = Read-Host "Enter the method (Get or Options)"

if ($method -ne "Get" -and $method -ne "Options"){
    echo "Error, use only 'Get' or 'Options' in method. Try again."
    }else {

        $web = Invoke-WebRequest -uri "$site" -Method $method
        echo ""
        echo "The server runs: "
        $web.headers.server
        echo ""
        echo "The server accepts the methods: "
        $web.headers.allow
        echo ""
        echo "Links found:"
        $web2 = Invoke-WebRequest -uri "$site"
        $web2.links.href | Select-String http://
}