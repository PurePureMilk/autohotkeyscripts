toggle = 0
#MaxThreadsPerHotkey 1

F1::
    Toggle := !Toggle 
    While Toggle{
	Sleep 1000
	Send {Up}
	Sleep 1000
	Send {Down}
    }

	
	








