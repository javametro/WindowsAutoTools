filever /S "C:\Program Files (x86)\MkrcvcdLibrary" > filever.log

if exist "C:\APSETUP" (
	filever /S "C:\APSETUP" >> filever.log
)

if exist "C:\MAVP" (
	filever /S "C:\MAVP" >> filever.log
)


