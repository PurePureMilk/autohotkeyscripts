toggle = 0
#MaxThreadsPerHotkey 1
#KeyHistory 100  

RightF(x, y)
{
	Send {Down down}	
	Sleep 100
	Send {Down up}
	return x + y
}

F1::
    Toggle := !Toggle 
    While Toggle{
	RightF(2, 3)
	Sleep 2000
    }










