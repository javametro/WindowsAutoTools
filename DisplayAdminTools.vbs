set objShell = CreateObject("shell.Application")
Set objNS = objShell.namespace(&h2f)
set colitems = objNS.items
For Each objitem in colitems
	WScript.Echo objitem.namespace
Next
