
#MaxThreadsPerHotkey 3
BackgroundColor := "161616"
SprintColor := "4C75A3;"
WalkColor := "3b8828"
AddAllColor := "4C75A3;"
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
GuiWidth := 200
Guixpos := A_ScreenWidth - GuiWidth - 20
Gui +LastFound +AlwaysOnTop +ToolWindow -Caption
Gui, Margin, 10, 10
Gui, Color, %BackgroundColor%
Gui, Font, s10
Gui, Add, Text, +Wrap w180 vStatusText cWhite, Phassist
Gui, Show, y10 x%Guixpos% w180 w%GuiWidth%
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
+CapsLock::
CapsLock::
SprintToggle := !SprintToggle
if (SprintToggle)
{
	Send "{Shift Down}{w Down}"
	GuiControl,, StatusText, Auto Running
	Gui, Color, %SprintColor%
}
else
{
	Send "{Shift Up}{w Up}"
	GuiControl,, StatusText, Manual Running
	Gui, Color, %BackgroundColor%
}
return
#If

; Rebind local push to talk
; Binds CapsLock button button to V
#If WinActive("ahk_exe Phasmophobia.exe")
+v::
v::
LocalTalkToggle := !LocalTalkToggle
if (LocalTalkToggle)
{
	SoundBeep, 420, 200
	Send "{v}"
	GuiControl,, StatusText, Local Push To Talk Active
	Gui, Color, %SprintColor%
}
else
{
	SoundBeep, 120, 200
	Send "{v}"
	GuiControl,, StatusText, Quiet
	Gui, Color, %BackgroundColor%
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
	GuiControl,, StatusText, Adding equipment
	Gui, Color, %BackgroundColor%
	Loop, 1 {					; EMF Reader
		Click 910, 355, 2	; EMF Reader
		Sleep, -1
	}
	Loop, 1 {					; Flashlight
		Click 910, 378, 2	; Flashlight
		Sleep, -1
	}
	Loop, 2 {					; Photo Camera
		Click 910, 413, 2	; Photo Camera
		Sleep, -1
	}
	Loop, 2 {					; Lighter
		Click 910, 442, 2	; Lighter
		Sleep, -1
	}
	Loop, 4 {					; Candle
		Click 910, 471, 2	; Candle
		Sleep, -1
	}
	Loop, 1 {					; UV Light
		Click 910, 500	; UV Light
	}
	Loop, 2 {					; Crucifix
		Click 910, 529	; Crucifix
		Sleep, -1
	}
	Loop, 5 {					; Video Camera
		Click 910, 558	; Video Camera
		Sleep, -1
	}
	Loop, 1 {					; Spirit Box
		Click 910, 587	; Spirit Box
		Sleep, -1
	}
	Loop, 2 {					; Salt
		Click 910, 616	; Salt
		Sleep, -1
	}
	Loop, 4 {					; Smudge Sticks
		Click 910, 645	; Smudge Sticks
		Sleep, -1
	}
	Loop, 5 {					; Tripod
		Click 910, 674	; Tripod
		Sleep, -1
	}
	Loop, 4 {					; Strong Flashlight
		Click 910, 703	; Strong Flashlight
		Sleep, -1
	}
	Loop, 4 {					; Motion Sensor
		Click 910, 732	; Motion Sensor
		Sleep, -1
	}
	Loop, 4 {					; Sound Sensor
		Click 910, 765	; Sound Sensor
		Sleep, -1
	}
	
	Loop, 3 {					; Thermometer
		Click 1440, 355	; Themometer
		Sleep, -1
	}
	Loop, 4 {					; Sanity Pills
		Click 1440, 384	; Sanity Pills
		Sleep, -1
	}
	Loop, 1 {					; Ghost Writing Book
		Click 1440, 413	; Ghost Writing Book
		Sleep, -1
	}
	Loop, 4 {					; Infrared Light Sensor
		Click 1440, 442	; Infrared Light Sensor
		Sleep, -1
	}
	Loop, 1 {					; Parabolic Microphone
		Click 1440, 465	; Parabolic Microphone
		Sleep, -1
	}
	Loop, 2 {					; Glowstick
		Click 1440, 500	; Glowstick
		Sleep, -1
	}
	Loop, 4 {					; Head Mounted Camera
		Click 1440, 529	; Head Mounted Camera
		Sleep, -1
	}
	GuiControl,, StatusText, Finished
	Gui, Color, %WalkColor%
	Sleep, 3000	
	GuiControl,, StatusText, Phassist
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
