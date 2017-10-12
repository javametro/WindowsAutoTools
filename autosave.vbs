Dim WshShell, AutoSaveTime, TXTFileName

AutoSaveTime = 300000

Set WshShell = Wscript.CreateObject("Wscript.Shell")
TXTFileName = InputBox("please input the file name you want create: ")


WshShell.Run "notepad"
WScript.Sleep 200
WshShell.AppActivate "ñ≥ëË-ÉÅÉÇí†"

wshShell.SendKeys "^s"
WScript.Sleep 300
WshShell.SendKeys TXTFilename

Wscript.Sleep 300
WshShell.SendKeys "%s"
WScript.Sleep AutoSaveTime

While WshShell.AppActivate(TXTFileName) = True
WshShell.SendKeys "^s"
Wscript.Sleep AutoSaveTime
Wend

Wscript.quit
