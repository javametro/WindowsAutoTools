const fixed = 2

set objFso= createobject("scripting.filesystemobject")

set colDiskDrives = objFso.Drives

for each objDiskDrive in colDiskDrives
if objDiskDrive.drivetype = fixed then
wscript.echo objDiskDrive.driveletter

end if

next

