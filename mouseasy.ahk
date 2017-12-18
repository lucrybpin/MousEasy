#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

speed = 1
InvertYAxis := true
desiredX :=0
desiredY := 0

SetTimer, Teste, 10

i::
	desiredY = -1
return

i Up::
	desiredY = 0
return

k::
	desiredY = 1
return

k Up::
	desiredY = 0
return

j::
	desiredX = -1
return

j Up::
	desiredX = 0
return

l::
	desiredX = 1
return

l Up::
	desiredX = 0
return

LAlt::
	speed = 15
return

LAlt Up::
	speed = 1
return

e::
	Click
return

q::
	Click, right
return

Teste:
	if(desiredY != 0 || desiredX != 0)
		MouseMove, desiredX * speed, desiredY * speed, 0, R
return
