Dim WshShell
Set WshShell = Wscript.CreateObject("Wscript.shell")
WshShell.Run "notepad"
Wscript.Sleep 2000

Wshshell.AppActivate "ñ≥ëË-ÉÅÉÇí†"
WshShell.Sendkeys "This is the most wonderful day of my life because I'm here with you now."

WshShell.SendKeys "^s%(F4){ENTER}C:\test\test.txt{ENTER}"