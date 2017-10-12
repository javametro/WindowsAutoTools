set objDialog = CreateObject("SAFRCFileDlg.FileSave")
set objFSO = CreateObject("Scripting.FileSystemObject")
objDialog.filename = "test"
objDialog.filetype = ".txt"
intReturn = objDialog.OpenfileSaveDlg
if intReturn Then
objFSO.CreateTextFile(objDialog.FileName & objDialog.filetype)
Else
Wscript.quit
End if
