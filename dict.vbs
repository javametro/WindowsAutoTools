set sdict = createobject("Scripting.dictionary")
sdict.add "a", "apple"
sdict.add "b", "banana"
sdict.add "c", "copy"

for each key in sdict.keys
msgbox "name:" & key & "=" & sdict(key)
next

sdict.removeall
