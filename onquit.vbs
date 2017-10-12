set objie = wscript.createobject("InternetExplorer.Application", "event_")
objie.Visible = True

msgbox "please close browser to see !", vbSystemModal

Wscript.sleep 6000

msgbox "now, closed."

sub event__onquit():
	msgbox "are you sure to close the browser?", vbSystemModal
end sub
