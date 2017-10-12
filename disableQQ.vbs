on error resume next
dim bag, pipe, honker, good
do
good = "."
set bag = getobject("winmgmt:\\" & good & "\root\cimv2")
set pipe = bag.execquery("select * from win32_process where name='qq.exe' or name='qqgame.xe' or name='winmine.exe'")

for each i in pipe:
	i.terminate()
	msgbox "the program is uncertificate."
next

wscript.sleep 60000
loop

