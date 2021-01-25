
#MaxThreadsPerHotkey 3
BackgroundColor := "aaaaaa"
SprintColor := "66aa55"
WalkColor := "ff0000"
ClickerColor := "fd00ff"
AddAllColor := "66aa55"
Gui +LastFound +AlwaysOnTop +Caption +ToolWindow +Resize
Gui, Margin, 10, 10
Gui, Color, %BackgroundColor%
Gui, Font, s16
Gui, Add, Text, vStatusText cWhite, Phassist
Gui, Show, x0 y0, Phassist
return


; Binds 4th mouse button to toggle walk or sprint
#If WinActive("ahk_exe Phasmophobia.exe")
+XButton1::
XButton1::
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
; Binds 5th mouse button button to V
#If WinActive("ahk_exe Phasmophobia.exe")
+XButton2::
XButton2::
LocalTalkToggle := !LocalTalkToggle
if (LocalTalkToggle)
{
	Send "{v}"
	GuiControl,, StatusText, Talking
	Gui, Color, %SprintColor%
}
else
{
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
	Gui, Color, %SprintColor%
}
else
{
	Send "{t}"
	Gui, Color, %WalkColor%
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
		Click 810, 355, 2	; EMF Reader
		Sleep, 200
	}
	Loop, 0 {					; Flashlight
		Click 810, 358, 2	; Flashlight
		Sleep, 200
	}
	Loop, 2 {					; Photo Camera
		Click 810, 413, 2	; Photo Camera
		Sleep, 200
	}
	Loop, 2 {					; Lighter
		Click 810, 442, 2	; Lighter
		Sleep, 200
	}
	Loop, 4 {					; Candle
		Click 810, 471, 2	; Candle
		Sleep, 200
	}
	Loop, 1 {					; UV Light
		Click 810, 500	; UV Light
	}
	Loop, 2 {					; Crucifix
		Click 810, 529	; Crucifix
		Sleep, 200
	}
	Loop, 5 {					; Video Camera
		Click 810, 558	; Video Camera
		Sleep, 200
	}
	Loop, 1 {					; Spirit Box
		Click 810, 587	; Spirit Box
		Sleep, 200
	}
	Loop, 2 {					; Salt
		Click 810, 616	; Salt
		Sleep, 200
	}
	Loop, 4 {					; Smudge Sticks
		Click 810, 645	; Smudge Sticks
		Sleep, 200
	}
	Loop, 5 {					; Tripod
		Click 810, 674	; Tripod
		Sleep, 200
	}
	Loop, 4 {					; Strong Flashlight
		Click 810, 703	; Strong Flashlight
		Sleep, 200
	}
	Loop, 4 {					; Motion Sensor
		Click 810, 732	; Motion Sensor
		Sleep, 200
	}
	Loop, 4 {					; Sound Sensor
		Click 810, 765	; Sound Sensor
		Sleep, 200
	}
	
	Loop, 3 {					; Thermometer
		Click 1340, 355	; Themometer
		Sleep, 200
	}
	Loop, 4 {					; Sanity Pills
		Click 1340, 384	; Sanity Pills
		Sleep, 200
	}
	Loop, 1 {					; Ghost Writing Book
		Click 1340, 413	; Ghost Writing Book
		Sleep, 200
	}
	Loop, 4 {					; Infrared Light Sensor
		Click 1340, 442	; Infrared Light Sensor
		Sleep, 200
	}
	Loop, 0 {					; Parabolic Microphone
		Click 1340, 471	; Parabolic Microphone
		Sleep, 200
	}
	Loop, 2 {					; Glowstick
		Click 1340, 500	; Glowstick
		Sleep, 200
	}
	Loop, 4 {					; Head Mounted Camera
		Click 1340, 529	; Head Mounted Camera
		Sleep, 200
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
