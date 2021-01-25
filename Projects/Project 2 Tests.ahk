Test2(x,y,z){
	
	nameOrNum := x
	playerNum := y
	playerName := z
	
	Send, %nameOrNum%
	Send {Enter}
	Sleep 100
	Send, %playerNum%
	Send {Enter}
	Sleep 100
	Send, %playerName%
	Send {Enter}
}

;2nd branch

;valid
+1::
Test2(2, "Jones", 10)
return

	;invalid in 3rd level
	+q::
	Test2(2, "Jones", 99)
	return
	
;valid
+2::
Test2(2, "Mancini", 16)
return
	
	;invalid in 3rd level
	+w::
	Test2(2, "Mancini", 99)
	return

;valid	
+3::
Test2(2, "Joseph", 36)
return
	
	;invalid in 3rd level
	+e::
	Test2(2, "Joseph", 99)
	return

;valid	
+4::
Test2(2, "Davis", 19)
return
		
	;invalid in 3rd level
	+r::
	Test2(2, "Davis", 99)
	return

;invalid in 2nd level
+5::
Test2(2, 99, "Davis")
return
	
+6::
Test2(2, "asdf", 1)
return

;invalid in lst level
+7::
Test2(3,19,"Davis")
return




	
	
	
	
	