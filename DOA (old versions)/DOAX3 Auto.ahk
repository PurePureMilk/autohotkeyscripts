toggle = 0
#MaxThreadsPerHotkey 1

LeftF()
{
	Send {Click 1247, 1039, down}
	Sleep 100
	Send {Click up}
	Sleep 1000
}

RightF()
{
	Send {Click 1387, 1046, down}
	Sleep 100
	Send {Click up}
	Sleep 1000
}

UpF()
{
	Send {Click 1326, 983, down}
	Sleep 100
	Send {Click up}
	Sleep 1000
}

DownF()
{
	Send {Click 1323, 1048, down}
	Sleep 100
	Send {Click up} 
	Sleep 1000
}

CircleF()
{
	Send {Click 482, 805, down}
	Sleep 750
	Send {Click up} ; o
	Sleep 1000
}

CircleFQ()
{
	Send {Click 482, 805, down}
	Sleep 750
	Send {Click up} ; o
	Sleep 100
}

OptionF()
{
	Send {Click 652, 529, down}
	Sleep 750
	Send {Click up}
	Sleep 1000
}

StartGameF(){
	CircleF()
	CircleF()
	Sleep 4000
	OptionF() ; skip zack scence
	OptionF()
	Sleep 4000
	CircleF()
	Sleep 4000
	OptionF() ; skip girl scence
	OptionF()
	Sleep 2000
	CircleF() ; accept friend
	Sleep 15000 ; next is noontime
}

MorningF(){

	Loop, 2
	{
		RightF()
	}
	CircleF()
	Loop, 2
	{
		DownF()
	}
	CircleF()
	CircleF()
	CircleF()
	Sleep 33000
	
}

NoonF(){
	CircleF()
	Loop, 2
	{
		DownF()
	}
	CircleF()
	CircleF()
	CircleF()
	Sleep 33000
}

EveningF(){
	CircleF()
	Loop, 2
	{
		DownF()
	}
	CircleF()
	CircleF()
	CircleF()
	Sleep 33000
	CircleF()
	Sleep 8000
}

HotelF(){
	CircleF()
	CircleFQ()
	Sleep 3000
	CircleF()
	Sleep 3000
	DownF()
	CircleF()
	Sleep 1000
	CircleF()
	Sleep 1000
	CircleF()
	Sleep 33000
	DownF()
	DownF()
	DownF()
	CircleF()
	Sleep 3000
	CircleF()
	Sleep 6000
	CircleF()
	Sleep 3000
}

F1::
    Toggle := !Toggle 
    While Toggle{
		MorningF()
		NoonF()
		EveningF()
		HotelF()
    }

F2::
    Toggle := !Toggle 
    While Toggle{
		NoonF()
		EveningF()
		HotelF()
		MorningF()
    }	

F3::
    Toggle := !Toggle 
    While Toggle{
		EveningF()
		HotelF()
		MorningF()
		NoonF()
    }
	
F4::
    Toggle := !Toggle 
    While Toggle{
		HotelF()
		MorningF()
		NoonF()
		EveningF()
    }

F5::
    Toggle := !Toggle 
    While Toggle{
		StartGameF()
    }

F7::
    Toggle := !Toggle 
    While Toggle{
		Send {Right}
		
    }	

F6::ExitApp 

	


	
 







