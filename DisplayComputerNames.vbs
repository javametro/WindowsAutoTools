' this script displays various computer names by reading the registry

option explicit
on error resume next
dim objShell
dim regActiveComputerName, regComputerName, regHostname
dim activeComputerName, ComputerName, Hostname

regActiveComputerName = "HKLM\SYSTEM\CurrentControlSet\Control" & _
	"ComputerName\ActiveComputerName\ComputerName"
	
regComputerName = "HKLM\SYSTEM\CurrentControlSet\Control" & _
	"ComputerName\ComputerName\ComputerName"
	
regHostname = _
	"HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\hostname"
	

set objShell = CreateObject("Wscript.shell")
ActiveComputerName = objShell.RegRead(regActiveComputerName)
computerName = objShell.RegRead(regComputerName)
hostname = objShell.RegRead(regHostname)

wscript.echo ActiveComputerName & " is active computer name "
wscript.echo computerName & " is computer name."
wscript.echo hostname & " is host name."
