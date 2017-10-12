set fso = wscript.createobject("scripting.filesystemobject")

if fso.fileexists("c:\kk.txt") then
msgbox "already exist"
else
set f = fso.createtextfile("C:\kk.txt")
end if
