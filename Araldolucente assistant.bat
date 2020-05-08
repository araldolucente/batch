@echo off
CLS
:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)
:due
@echo off
color a 
cls
echo ================================================================
echo                               WELCOME
echo ================================================================
mkdir 
timeout 1 > nul
:ff
color b
:ini
cls
echo ciao
echo ================================================================
echo                        CIAO!! PREMI SPAZIO
echo ================================================================
:ii3
pause > nul
echo vai a..
set /p scegli=1.avvia wifi master password recovery  2.Impostazioni 3.tutorial 4.aiuto 5. visualizza informazioni sui wifi a cui sei stato collegato 6.ripara gli errori dei file "dll" di sistema99. esci : 
if %scegli%==1 goto one
if %scegli%==2 goto tris
if %scegli%==3 goto four
if %scegli%==4 goto illis
if %scegli%==5 goto civetta
if %scegli%==6 goto dll
if %scegli%==99 goto 99
pause > nul

goto :due
:civetta
:wlan
"C:\users\%userprofile%\desktop
echo on
netsh wlan show wlanreport
@echo off
move "C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html" "C:\users\%userprofile%\Desktop\Araldolucente assistant"
"C:\users\%userprofile%\desktop\Araldolucente assistant\wlan-report-latest.html"
echo ===============================
echo     OPERAZIONE COMPLETATA
echo ===============================
timeout 1 > nul 
goto :due
:dll
echo =============================================
echo        RIPARATORE DEI FILE DI SISTEMA
echo =============================================
echo attendere che il processo finisca prima di chiudere il cmd 
cls
echo attendere prego..
sfc /scannow
echo ==============================
echo     OPERAZIONE COMPLETATA
echo ==============================
echo premere un tasto per tornare al menu di partenza:
pause > nul
goto :ini
:one
@echo off
color a
cls
pause > nul
echo =================================================================
echo IL RECUPERA PASSWORD WIFI AUTOMATIZZATO!! (by Araldolucente)
echo =================================================================   
cd desktop
mkdir report1
cd report1
netsh wlan show settings > output7.txt
netsh wlan show blockednetworks > output6.txt
netsh wlan show all > output.txt
netsh wlan show profile > output1.txt
netsh wlan export profile key=clear 
echo =================================================================
echo                      OPERAZIONE COMPLETATA!
echo =================================================================
timeout 1 > nul
goto :ff
:tris
cls
echo =====================================================================
echo                               IMPOSTAZIONI
echo =====================================================================
set /p scegli=1.sfondo 2.impostazioni avanzate  3.torna alla schermata d' inizio :
if %scegli%==1 goto uno
if %scegli%==2 goto dual
if %scegli%==3 goto ff
pause > nul
:uno
cls
echo =====================================================================
echo                                 SFONDO
echo =====================================================================
echo es. verde aqua-nero: il verde acqua e il colore della scritta mentre il nero e il colore di sfondo.
pause > nul
set /p scegli=1.immagini per il desktop 2.colore scritte di questa app  :
if %scegli%==1 goto :desktop
if %scegli%==2 goto :scritte
pause > nul
goto :uno
:desktop
cls
color a
echo ============================================================
echo                             DESKTOP
echo ============================================================
echo queste immagini provengono dal sito di google drive, e sono state caricate dall' amministratore dell' app
echo che foto vuoi installare?
set /p scegli=1.foto di un colibri 2.foto di una montagna 3.arte astratta  :
if %scegli%==1 goto :colibri
if %scegli%==2 goto :montagna
if %scegli%==2 goto :astr
pause > nul
goto :uno
:colibri
start www.drive.google.com/open?id=1qsZr9283AUfodi7oUvzvagOp-zkK97v9
if errorlevel 185 echo controllare la connessione internet
pause > nul 
goto :uno
:montagna
start www.drive.google.com/open?id=1iX-_QPSZ-qW-4-p205zBE62GXr1Ny3Jh
if errorlevel 190 echo controllare la connessione internet
pause > nul
goto :uno
:astr
start www.drive.google.com/open?id=1pZymaSAxcMxG9ff7vYlW-RsEDrw33lPo
if errorlevel 195 echo controllare la connessione internet
pause > nul
goto :uno 
:scritte
set /p scegli=1.verde  2.verde acqua (s) 3.giallo (c) 4.giallo (s) 5.blu (c) 6.blu (s)  7.rosso (s) 8.rosso (c) 9.nero 10.grigio 11.celeste  12.viola (c) 13.viola (s) 14.bianco 15.grigio (c) 16.verde acqua 17.esci :
if %scegli%==1 goto :uno
if %scegli%==2 goto :due
if %scegli%==3 goto :tre
if %scegli%==4 goto :quattro
if %scegli%==5 goto :cinque
if %scegli%==6 goto :sei
if %scegli%==7 goto :sette
if %scegli%==8 goto :otto
if %scegli%==9 goto :nove
if %scegli%==10 goto :dieci
if %scegli%==11 goto :undici
if %scegli%==12 goto :dodici
if %scegli%==13 goto :tredici
if %scegli%==14 goto :quattordici
if %scegli%==15 goto :quindici
if %scegli%==16 goto :sedici
if %scelgi%==17 goto :diciassette
pause > nul
goto :ini
:uno
color 0a
goto :ini
:due
color 2
goto :ini
:tre
color e
goto :ini
:quattro
color 6
goto :ini
:cinque
color 9
goto :ini
:sei
color 1
goto :ini
:sette
color 4
goto :ini
:otto
color c
goto :ini
:nove 
color 0
goto :ini
:dieci
color 8
goto :ini
:undici
color 3
goto :ini
:dodici
color d
goto :ini
:tredici
color 5
goto :ini
:quattordici
color 7
goto :ini
:quindici
color f
goto :ini
:sedici
color b
goto :ini
:diciassette
exit
:99
echo arrivederci 
timeout 1 > nul
exit
goto :ini
:illis
:dual
cls
echo ======================================================================
echo                           IMPOSTAZIONI AVANZATE
echo ======================================================================
echo //wi fi master password recovery ti salvera il report sul desktop nella cartella "Araldolucente assistant"
echo //per idee, miglioramenti o debugging, contattare su github "Araldolucente"
echo //non mi assumo la responsabilita dell' uso che farete degli script inclusi in questa applicazione, inoltre vi garantiamo
echo  che tale non contiene file dannosi per il sistema, per prevenire fonti sconosciute e modifiche da parte di terze parti, installarla solo
echo  dal sito ufficiale di github :https://github.com/araldolucente/batch.git
echo //ricordatevi che da grandi privilegi dipendono grandi responsabilita, quindi
echo  non usate questi tool per violare la privacy degli altri, poiche anche questo e un reato punibile dalla legge.
echo //se vi dovesse piacere questa app, lasciate una stella al realizzatore "Araldolucente"
echo //iscrivetevi anche al mio canale youtube per supportarmi e per dare merito al mio duro lavoro per questo sistema//
echo //
pause > nul
goto :ff
:four
cls
color 6
echo ======================================================================
echo                  BENVENUTO NELLA SEZIONE DEI TUTORIAL!!
echo ======================================================================
echo qua puoi trovare dei tutotial sul miol canale youtube che potrebbero esserti utili :
timeout 1 > nul
start www.youtube.com/channel/UCeai2gJ6TNgjeP1JNVmW-Ow
pause > nul && goto :ini
