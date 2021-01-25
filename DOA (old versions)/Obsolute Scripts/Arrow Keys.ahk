toggle = 0
#MaxThreadsPerHotkey 1

F1::
    Toggle := !Toggle 
    While Toggle{
	Sleep 2000
	Send {Up}
	Sleep 2000
	Send {Down}
	Sleep 2000
	Send {Left}
	Sleep 2000
	Send {Right}
	Sleep 2000
    }

	
	








