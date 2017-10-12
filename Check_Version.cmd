set CURRENT_DIR=%~dp0
set MKRCVCD_LIBRARY_FOLDER="C:\Program Files (x86)\MkrcvcdLibrary"
set APSETUP_MKRCVCD_LIBRARY="C:\APSETUP\MkrcvcdLibrary"
set MAVP_MKRCVCD_LIBRARY="C:\MAVP\MKRCVCDLibrary"
set SETUP_PACKAGE_PATH=""
set UWPINSTALLDIR="C:\Program Files\WindowsApps"

REM MKRCVCDLibrary
pushd %MKRCVCD_LIBRARY_FOLDER%
echo mkrcvcdDP.exe > %CURRENT_DIR%\FileVersion.txt
powershell (Get-Item .\mkrcvcdDP.exe).VersionInfo.FileVersion >> %CURRENT_DIR%\FileVersion.txt
echo MKRCVCDSER.exe >> %CURRENT_DIR%\FileVersion.txt
powershell (Get-Item .\MKRCVCDSER.exe).VersionInfo.FileVersion >> %CURRENT_DIR%\FileVersion.txt
echo NamePipeCli.exe >> %CURRENT_DIR%\FileVersion.txt
powershell (Get-Item .\NamePipeCli.exe).VersionInfo.FileVersion >> %CURRENT_DIR%\FileVersion.txt
echo Rere.exe >> %CURRENT_DIR%\FileVersion.txt
powershell (Get-Item .\Rere.exe).VersionInfo.FileVersion >> %CURRENT_DIR%\FileVersion.txt
popd

REM MKRCVCDLibrary Setup Package
if exist %MKRCVCD_LIBRARY_FOLDER%\Commercial.flg (
	set SETUP_PACKAGE_PATH=%MAVP_MKRCVCD_LIBRARY%
) else (
	set SETUP_PACKAGE_PATH=%APSETUP_MKRCVCD_LIBRARY%
)

pushd %SETUP_PACKAGE_PATH%
echo Setup.exe >> %CURRENT_DIR%\FileVersion.txt
powershell (Get-Item .\Setup.exe).VersionInfo.FileVersion >> %CURRENT_DIR%\FileVersion.txt
popd

pushd %UWPINSTALLDIR%
cd B3CD3740.276211AB9143F*
echo mkrcvcd.exe >> %CURRENT_DIR%\FileVersion.txt
powershell (Get-Item .\mkrcvcd.exe).VersionInfo.FileVersion >> %CURRENT_DIR%\FileVersion.txt
popd
