Dim WshShell
Set WshShell = Wscript.CreateObject("Wscript.shell")
WshShell.Run "notepad"
Wscript.Sleep 2000

Wshshell.AppActivate "����-������"

WshShell.SendKeys "hello welcome to cfan."