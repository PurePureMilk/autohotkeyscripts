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
    Sleep 100
    Send {Click up} 
    Sleep 1000
}

CircleFQ()
{
    Send {Click 482, 805, down}
    Sleep 100grappa
    Send {Click up} 
    Sleep 250
}

CrossF()
{
    Send {Click 1365, 926, down}
    Sleep 100
    Send {Click up} 
    Sleep 1000
}

CrossFQ()
{
    Send {Click 1365, 926, down}
    Sleep 100
    Send {Click up} 
    Sleep 100
}

OptionF()
{
    Send {Click 797, 671, down}
    Sleep 100
    Send {Click up}
    Sleep 1000
}

PlayBeachFlagsF(){
	CircleF()
	DownF()
    CircleF() ; Start Flags
	CircleF()
	Sleep 7000
    CircleF() ; Skip Intro
    CrossF() ; Lose
	CrossF()
	CrossF()
    CrossF()
	CrossF()
    CircleF() ; End Beach Flags
    CircleF()
    Sleep 6000

}

StartGameF(){
    Sleep 4000
    OptionF() ; skip zack scene
    OptionF()
    OptionF()
    Sleep 4000 ; k m l hi he m h n m k a
	Loop, 3 {
		LeftF()
	}
    CircleF() ; kasumi
    CircleF()
    CircleF()
    Sleep 4000
    OptionF() ; skip girl scene
    OptionF()
    OptionF()
    OptionF()
    Sleep 10000
    CrossF()
    CrossF()
    CrossF()
    Sleep 8000 ; next is noontime
}

MorningF(){

    Loop, 2
    {
        RightF()
    }
    
    PlayBeachFlagsF()
    
}

MorningFAlt(){

    CircleF() ; food ate
    CrossF()
    CrossF()
    CrossF()
    
    Loop, 2
    {
        RightF()
    }
    
    PlayBeachFlagsF()
    
}

NoonF(){
    PlayBeachFlagsF()
}

EveningF(){
    PlayBeachFlagsF()

    CircleF() ; End Day Dialouge
    Sleep 8000
	
	CircleF()
    CircleF()
    Sleep 3000
    CircleF()
    Sleep 3000
}

HotelF(){

    DownF()
    DownF()
    DownF()
    CircleF()
    Sleep 3000
    CircleF()
	CircleF()
    Sleep 8000
    CircleF()
    Sleep 1000
}

EndGameF(){

    DownF()
    DownF()
    Loop, 5 {
		CircleF()
	}
    Sleep 5000
	Loop, 5 {
		CircleF()
	}
    Sleep 5000
    Loop, 5 {
		OptionF() ; skip girl ending
	}
	Sleep 15000
	Loop, 5 {
		CircleF()
	}
    Sleep 7000
    Loop, 5 {
		OptionF() ; skip credits
	}
    Sleep 4000
	Loop , 5 {
		CircleF() ; Results
	}
	Sleep 10000
	Loop , 10 {
		CircleF()
	}
}

; Morning
F1::
    Toggle := !Toggle 
    While Toggle{
        MorningF()
        NoonF()
        EveningF()
        HotelF()
    }
; Noon
F2::
    Toggle := !Toggle 
    While Toggle{
        NoonF()
        EveningF()
        HotelF()
        MorningF()
    }    
;Evening
F3::
    Toggle := !Toggle 
    While Toggle{
        EveningF()
        HotelF()
        MorningF()
        NoonF()
    }
;Hotel
F4::
    Toggle := !Toggle 
    While Toggle{
        HotelF()
        MorningF()
        NoonF()
        EveningF()
    }
    
F5::ExitApp 

; Start Game from Title Screen
F6::
    Toggle := !Toggle 
    While Toggle{
        StartGameF()
        NoonF()
        EveningF()
        HotelF()
        
        MorningFAlt()
        NoonF()
        EveningF()
        HotelF()
        Loop, 11 {
            MorningF()
            NoonF()
            EveningF()
            HotelF()
        }
        MorningF()
        NoonF()
        EveningF()
        EndGameF()
    }

; Start Game from noon
F7::
    Toggle := !Toggle 
    While Toggle{

        NoonF()
        EveningF()
        HotelF()
        
        MorningFAlt()
        NoonF()
        EveningF()
        HotelF()
        
        Loop, 11 {
            MorningF()
            NoonF()
            EveningF()
            HotelF()
        }
        MorningF()
        NoonF()
        EveningF()
        EndGameF()
        StartGameF()
    }

; End Game
F8::
	EndGameF()
	StartGameF()
	Sleep 240000


DeleteItemF()
{
    CircleF()
    LeftF()
    CircleF()
    LeftF()
	CircleF()
}

; Deletes Two Rows
DeleteSixItemsF() {
    DeleteItemF()
    LeftF()
    DeleteItemF()
    LeftF()
    DeleteItemF()
    UpF()
    DeleteItemF()
    RightF()
    DeleteItemF()
    RightF()
    DeleteItemF()
    UpF()
}

F9::
    Toggle := !Toggle 
    While Toggle{
		Loop, 5 {
			DeleteSixItemsF()
		}
       
    }






