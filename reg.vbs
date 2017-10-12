set ws = wscript.createobject("wscript.shell")
v = ws.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\nwiz")
wscript.echo v

