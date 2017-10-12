sigcheck64 -e -c "C:\Program Files (x86)\MkrcvcdLibrary" > installFolder.csv

if exist "C:\APSETUP" (
	sigcheck64 -e -c "C:\APSETUP\MkrcvcdLibrary" > APSETUP.csv
)

if exist "C:\MAVP" (
	sigcheck64 -e -c "C:\APSETUP\MkrcvcdLibrary" > APSETUP.csv
)