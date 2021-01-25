Test1(x,y,z){
	
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

;1st branch

;valid
+1::
Test1(1, 10, "Jones")
return

	;invalid 3rd level
	+q::
	Test1(1, 10, "asdf")
	return
	
;valid
+2::
Test1(1, 16, "Mancini")
return
	
	;invalid 3rd level
	+w::
	Test1(1, 16, "asdf")
	return

;valid	
+3::
Test1(1, 36, "Joseph")
return
	
	;invalid 3rd level
	+e::
	Test1(1, 36, "asdf")
	return

;valid	
+4::
Test1(1, 19, "Davis")
return
		
	;invalid 3rd level
	+r::
	Test1(1, 19, "asdf")
	return

;invalid 2nd level
+5::
Test1(1, 99, "Davis")
return
	
;invalid 2nd level
+6::
Test1(1, "Mancini", 1)
return

;invalid in 1st level
+7::
Test1(3,19,"Davis")
return




	
	
	
	
	