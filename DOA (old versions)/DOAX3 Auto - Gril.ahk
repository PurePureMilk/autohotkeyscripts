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
    Send {Click 652, 529, down}
    Sleep 100
    Send {Click up}
    Sleep 1000
}

PlayBeachFlagsF(){
	CircleF()
    DownF()
    CircleF() ; Start Flags
	CircleF()
	Sleep 2000
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
    CircleF()
    CircleF()
    Sleep 4000
    OptionF() ; skip zack scence
    OptionF()
    OptionF()
    Sleep 4000
    CircleF()
    CircleF()
    CircleF()
    Sleep 4000
    OptionF() ; skip girl scence
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
}

HotelF(){
    CircleF()
    CircleF()
    Sleep 3000
    CircleF()
    Sleep 3000
    DownF()
    DownF()
    DownF()
    CircleF()
    Sleep 3000
    CircleF()
    Sleep 8000
    CircleF()
    Sleep 1000
}

EndGameF(){
    CircleF()
    CircleF()
    Sleep 3000
    CircleF()
    Sleep 3000
    DownF()
    DownF()
    CircleF()
    Sleep 3000
    CircleF()
    Sleep 5000
    OptionF() ; skip zack scence
    OptionF()
    OptionF()
    Sleep 3000()
    CircleF() ; "My vacation End Dialouge"
    Sleep 3000
    Loop, 4 ; Credits
    {
        OptionF()
    }
    Sleep 3000
    CircleF()
    CircleF() ; Skip Tip
    CircleF() ; Title Screen
    CircleF()
    CircleF()
    CircleF()
    Sleep 12000
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

; Start Game
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

; Start Game
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
    
F8::
    Toggle := !Toggle 
    While Toggle{

    }


DeleteItemF()
{
    CircleFQ()
    RightF()
    CircleFQ()
    LeftF()
	CircleFQ()
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
		Loop, 40 {
			DeleteSixItemsF()
		}
       
    }






