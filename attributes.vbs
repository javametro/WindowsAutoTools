set fs = wscript.Createobject("scripting.filesystemobject")

set f = fs.getfile("autosave.vbs")

msgbox f.attributes

