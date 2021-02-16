
#MaxThreadsPerHotkey 3
BackgroundColor := "161616"
SprintColor := "3b8828"
WalkColor := "161616"
ClickerColor := "fd00ff"
AddAllColor := "3b8828"
; Difficulty Questions
QDifficulty1 = "What do you want?"
QDifficulty2 = "Why are you here?"
QDifficulty3 = "Do you want to hurt us?"
QDifficulty4 = "Are you friendly?"
; Location Questions
QLocation1 = "Where are you?"
QLocation2 = "Give us a sign."
QLocation3 = "Are you here?"
QLocation4 = "Show yourself."
; Age questions
QAge1 = "How old are you?"
QAge2 = "Are you young?"
QAge3 = "Are you old?"
QAge4 = "What is your age?"
Gui +LastFound +AlwaysOnTop +ToolWindow -Caption
Gui, Margin, 10, 10
Gui, Color, %BackgroundColor%
Gui, Font, s10
Gui, Add, Text, +Wrap w180 vStatusText cWhite, Phassist
Gui, Show, x0 y0 w180, Phassist
return

; Binds F1 to random Spirit Box phrases
; #If WinActive("ahk_exe Phasmophobia.exe")
F1::
Random, rn, 1, 4
; msgbox % QDifficulty%rn%
GuiControl,, StatusText, % QDifficulty%rn%
return
; #If

; Binds F1 to random Spirit Box phrases
; #If WinActive("ahk_exe Phasmophobia.exe")
F2::
Random, rn, 1, 4
GuiControl,, StatusText, % QLocation%rn%
return
; #If

; Binds F1 to random Spirit Box phrases
; #If WinActive("ahk_exe Phasmophobia.exe")
F3::
Random, rn, 1, 4
GuiControl,, StatusText, % QAge%rn%
return
; #If

; Binds 5th mouse button to toggle walk or sprint
#If WinActive("ahk_exe Phasmophobia.exe")
+XButton2::
XButton2::
SprintToggle := !SprintToggle
if (SprintToggle)
{
	Send "{Shift Down}{w Down}"
	GuiControl,, StatusText, Running
	Gui, Color, %SprintColor%
}
else
{
	Send "{Shift Up}{w Up}"
	GuiControl,, StatusText, Idling
	Gui, Color, %WalkColor%
}
return
#If

; Rebind local push to talk
; Binds CapsLock button button to V
#If WinActive("ahk_exe Phasmophobia.exe")
+CapsLock::
CapsLock::
LocalTalkToggle := !LocalTalkToggle
if (LocalTalkToggle)
{
	SoundBeep, 420, 200
	Send "{v}"
	GuiControl,, StatusText, Talking
	Gui, Color, %SprintColor%
}
else
{
	SoundBeep, 120, 200
	Send "{v}"
	GuiControl,, StatusText, Quiet
	Gui, Color, %WalkColor%
}
return
#If

; Rebind flashlight
; Binds middle mouse button to T
#If WinActive("ahk_exe Phasmophobia.exe")
+MButton::
MButton::
FlashlightToggle := !FlashlightToggle
if (FlashlightToggle)
{
	Send "{t}"
}
else
{
	Send "{t}"
}
return
#If

; Binds F10 to auto add all the items
; Next code block taken from Neighthianael
#If WinActive("ahk_exe Phasmophobia.exe")
+F10::
F10::
	GuiControl,, StatusText, Adding
	Gui, Color, %AddAllColor%
	Loop, 1 {					; EMF Reader
		Click 910, 355, 2	; EMF Reader
		Sleep, 100
	}
	Loop, 1 {					; Flashlight
		Click 910, 378, 2	; Flashlight
		Sleep, 100
	}
	Loop, 2 {					; Photo Camera
		Click 910, 413, 2	; Photo Camera
		Sleep, 100
	}
	Loop, 2 {					; Lighter
		Click 910, 442, 2	; Lighter
		Sleep, 100
	}
	Loop, 4 {					; Candle
		Click 910, 471, 2	; Candle
		Sleep, 100
	}
	Loop, 1 {					; UV Light
		Click 910, 500	; UV Light
	}
	Loop, 2 {					; Crucifix
		Click 910, 529	; Crucifix
		Sleep, 100
	}
	Loop, 5 {					; Video Camera
		Click 910, 558	; Video Camera
		Sleep, 100
	}
	Loop, 1 {					; Spirit Box
		Click 910, 587	; Spirit Box
		Sleep, 100
	}
	Loop, 2 {					; Salt
		Click 910, 616	; Salt
		Sleep, 100
	}
	Loop, 4 {					; Smudge Sticks
		Click 910, 645	; Smudge Sticks
		Sleep, 100
	}
	Loop, 5 {					; Tripod
		Click 910, 674	; Tripod
		Sleep, 100
	}
	Loop, 4 {					; Strong Flashlight
		Click 910, 703	; Strong Flashlight
		Sleep, 100
	}
	Loop, 4 {					; Motion Sensor
		Click 910, 732	; Motion Sensor
		Sleep, 100
	}
	Loop, 4 {					; Sound Sensor
		Click 910, 765	; Sound Sensor
		Sleep, 100
	}
	
	Loop, 3 {					; Thermometer
		Click 1440, 355	; Themometer
		Sleep, 100
	}
	Loop, 4 {					; Sanity Pills
		Click 1440, 384	; Sanity Pills
		Sleep, 100
	}
	Loop, 1 {					; Ghost Writing Book
		Click 1440, 413	; Ghost Writing Book
		Sleep, 100
	}
	Loop, 4 {					; Infrared Light Sensor
		Click 1440, 442	; Infrared Light Sensor
		Sleep, 100
	}
	Loop, 1 {					; Parabolic Microphone
		Click 1440, 465	; Parabolic Microphone
		Sleep, 100
	}
	Loop, 2 {					; Glowstick
		Click 1440, 500	; Glowstick
		Sleep, 100
	}
	Loop, 4 {					; Head Mounted Camera
		Click 1440, 529	; Head Mounted Camera
		Sleep, 100
	}
	GuiControl,, StatusText, Finished
	Gui, Color, %BackgroundColor%
return
#If

Insert::Reload

+DEL::
Send "{Shift Up}"
ExitApp
return

DEL::
ExitApp
