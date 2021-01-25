toggle = 0
#MaxThreadsPerHotkey 1

UpF(x, y)
{
	Send {Click 940, 639, down}
	Sleep 100
	Send {Click up}
}

DownF(x, y)
{
	Send {Click 960, 700, down}
	Sleep 100
	Send {Click up} ; v
}

CircleF(x, y)
{
	Send {Click 34, 488, down}
	Sleep 750
	Send {Click up} ; o
	return x + y   ; "Return" expects an expression.
}

StartF(x, y)
{
	Send {Click 991, 356, down}
	Sleep 750
	Send {Click 991, 356, up}
}

F1::
    Toggle := !Toggle 
    While Toggle{
	
	Sleep 1000 ; afternoon
	CircleF(2, 3)
	Sleep 1000
	DownF(2, 3) ; x1
	Sleep 1000
	CircleF(2, 3)
	Sleep 16000
	StartF(2, 3)
	Sleep 1000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	UpF(2, 3)
	Sleep 1000
	CircleF(2, 3)
	Sleep 1000
	Send {Right down}	
	Sleep 100
	Send {Right up}
	Sleep 1000
	CircleF(2, 3)
	Sleep 6000 ; skipping volleyball game
	CircleF(2, 3) ; "long day"
	
	Sleep 8000 ; going to hotel
	CircleF(2, 3) ; "i'm tired"
	Sleep 1000
	CircleF(2, 3) ; spoiled food
	Sleep 4000
	CircleF(2, 3) ; gift from Zack
	Sleep 4000
	DownF(2, 3)
	Sleep 1000
	DownF(2, 3)	
	Sleep 1000
	DownF(2, 3)
	Sleep 1000
	CircleF(2, 3)
	Sleep 3000
	CircleF(2, 3)
	Sleep 7000
	CircleF(2, 3) ; skip partner dialouge 
	
	
	Sleep 2000
	Send {Right down}	
	Sleep 100
	Send {Right up}
	Sleep 1000
	Send {Right down}	
	Sleep 100
	Send {Right up} ; to niki beach
	
	Sleep 1000 ; morning
	CircleF(2, 3)
	Sleep 1000
	DownF(2, 3) ; x1
	Sleep 1000
	CircleF(2, 3)
	Sleep 16000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	UpF(2, 3)
	Sleep 1000
	CircleF(2, 3)
	Sleep 1000
	Send {Right down}	
	Sleep 100
	Send {Right up}
	Sleep 1000
	CircleF(2, 3)
	Sleep 6000 ; skipping volleyball game
	
	
	Sleep 1000 ; noon
	CircleF(2, 3)
	Sleep 1000
	DownF(2, 3) ; x1
	Sleep 1000
	CircleF(2, 3)
	Sleep 16000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	StartF(2, 3)
	Sleep 2000
	UpF(2, 3)
	Sleep 1000
	CircleF(2, 3)
	Sleep 1000
	Send {Right down}	
	Sleep 100
	Send {Right up}
	Sleep 1000
	CircleF(2, 3)
	Sleep 6000 ; skipping volleyball game
    }
	


	
 







