################################################################################################################
#	KB5050533 - Azure Connect feature pack for SQL Server 2017												                                                                                        ###
################################################################################################################
#	Firma: BitHawk AG
#	Script Name: SQL2017_Cumulative_Update_V31.ps1
#	Description: 
#	Author: Marcel.Luginbuhl@bithawk.ch
#   Created: 03.06.2025
#   Last Modified: 

# Ortner Anlegen
New-Item -Name “_SQLCU” -ItemType Directory -Path “C:\”

# URL der Installationsdatei
$installerUrl = "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/updt/2025/03/sqlserver2017-kb5050533-x64_79f01499da6cfdddd94de9d35835e7408e3cd462.exe"

# Pfad, wo die Installationsdatei gespeichert wird
$installerPath = "C:\_SQLCU\SQLServer2017-KB5050533-x64.exe"

# Herunterladen der Datei
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Starten der Installation (für .msi-Dateien)
Start-Process $installerPath
