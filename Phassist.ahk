
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

; Binds middle mouse button to T
#If WinActive("ahk_exe Phasmophobia.exe")
+MButton::
MButton::
FlashlightToggle := !FlashlightToggle
if (FlashlightToggle)
{
	Send "{t}"
	GuiControl,, StatusText, FlashO
	Gui, Color, %SprintColor%
}
else
{
	Send "{t}"
	GuiControl,, StatusText, Darkness
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
		Click 805, 355	; EMF Reader
		Sleep, 100
	}
	Loop, 0 {					; Flashlight
		Click 805, 384	; Flashlight
		Sleep, 100
	}
	Loop, 2 {					; Photo Camera
		Click 805, 413	; Photo Camera
		Sleep, 100
	}
	Loop, 2 {					; Lighter
		Click 805, 442	; Lighter
		Sleep, 100
	}
	Loop, 4 {					; Candle
		Click 805, 471	; Candle
		Sleep, 100
	}
	Loop, 1 {					; UV Light
		Click 805, 500	; UV Light
	}
	Loop, 2 {					; Crucifix
		Click 805, 529	; Crucifix
		Sleep, 100
	}
	Loop, 5 {					; Video Camera
		Click 805, 558	; Video Camera
		Sleep, 100
	}
	Loop, 1 {					; Spirit Box
		Click 805, 587	; Spirit Box
		Sleep, 100
	}
	Loop, 2 {					; Salt
		Click 805, 616	; Salt
		Sleep, 100
	}
	Loop, 4 {					; Smudge Sticks
		Click 805, 645	; Smudge Sticks
		Sleep, 100
	}
	Loop, 5 {					; Tripod
		Click 805, 674	; Tripod
		Sleep, 100
	}
	Loop, 4 {					; Strong Flashlight
		Click 805, 703	; Strong Flashlight
		Sleep, 100
	}
	Loop, 4 {					; Motion Sensor
		Click 805, 732	; Motion Sensor
		Sleep, 100
	}
	Loop, 4 {					; Sound Sensor
		Click 805, 765	; Sound Sensor
		Sleep, 100
	}
	
	Loop, 3 {					; Themometer
		Click 1340, 355	; Themometer
		Sleep, 100
	}
	Loop, 4 {					; Sanity Pills
		Click 1340, 384	; Sanity Pills
		Sleep, 100
	}
	Loop, 1 {					; Ghost Writing Book
		Click 1340, 413	; Ghost Writing Book
		Sleep, 100
	}
	Loop, 4 {					; Infrared Light Sensor
		Click 1340, 442	; Infrared Light Sensor
		Sleep, 100
	}
	Loop, 0 {					; Parabolic Microphone
		Click 1340, 471	; Parabolic Microphone
		Sleep, 100
	}
	Loop, 2 {					; Glowstick
		Click 1340, 500	; Glowstick
		Sleep, 100
	}
	Loop, 4 {					; Head Mounted Camera
		Click 1340, 529	; Head Mounted Camera
		Sleep, 100
	}
	GuiControl,, StatusText, Finished
	Gui, Color, %BackgroundColor%
return
#If

+DEL::
Send "{Shift Up}"
ExitApp
return

DEL::
ExitApp
