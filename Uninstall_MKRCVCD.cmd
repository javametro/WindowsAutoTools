REM unintsall MkrcvcdLibrary
set CURRENT_DIR=%~dp0
set MKRCVCD_LIBRARY_FOLDER="C:\Program Files (x86)\MkrcvcdLibrary"
set SETUP_PACKAGE_PATH=""
set APSETUP_MKRCVCD_LIBRARY="C:\APSETUP\MkrcvcdLibrary"
set MAVP_MKRCVCD_LIBRARY="C:\MAVP\MKRCVCDLibrary"

if exist %MKRCVCD_LIBRARY_FOLDER%\Commercial.flg do (
	set SETUP_PACKAGE_PATH=%MAVP_MKRCVCD_LIBRARY%
) else (
	set SETUP_PACKAGE_PATH=%APSETUP_MKRCVCD_LIBRARY%
)

if not exist %SETUP_PACKAGE_PATH% (
	echo %SETUP_PACKAGE_PATH% is not exist
	goto END
)

set PRODUCTCODE=`powershell -file %CURRENT_DIR%\Get-MSIFileInformation.ps1 -Path "C:\APSETUP\MkrcvcdLibrary\再セットアップメディア作成ツールLibrary.msi" -Property ProductName`
pushd %SETUP_PACKAGE_PATH%
msiexec.exe /unintsall 
popd


REM unintsall MKRCVCD UWP

:END
