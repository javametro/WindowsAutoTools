on error resume next
a = 11
b = 0
c = a / b

if err.number <> 0 then
	wscript.echo err.number & err.description & err.source
end if
