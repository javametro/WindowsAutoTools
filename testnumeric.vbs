Option Explicit
Dim intX
Dim intY

intX = 65
intY = 45

If intX > intY Then	
	msgbox intX & " is bigger than " & intY
ElseIf intX < intY Then	
	msgbox intX & " is smaller than " & intY
Else	
	MsgBox intX & " and " & intY & " are equal "
End IF