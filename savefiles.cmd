if exist C:\Recovery\OEM\partial-C.swm (
	move C:\Recovery\OEM\*.swm C:\
)

if not exist C:\Recovery\OEM\partial-C.swm (
	fsutil file createnew C:\Recovery\OEM\partial-C.swm 2000000000
	fsutil file createnew C:\Recovery\OEM\partial-C2.swm 2000000000
	fsutil file createnew C:\Recovery\OEM\partial-C3.swm 2000000000
	fsutil file createnew C:\Recovery\OEM\partial-C4.swm 2000000000
)
