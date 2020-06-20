WinGetPos,,, taskbarWidth, taskbarHeight, ahk_class Shell_TrayWnd


Width := A_ScreenWidth

Divided := A_ScreenWidth/20

WidthSmall := Divided*5
WidthLarge := Width-WidthSmall-WidthSmall

StartLeft := 0
StartCenter := WidthSmall
StartRight := WidthSmall+WidthLarge

; CTRL + ALT + INSERT
^!Insert::
WinGet, winid ,, A
WinGetTitle, winTitle, ahk_id %winid%
WinMove, %winTitle%, ,  StartLeft, 0,   %WidthSmall%,   A_ScreenHeight-taskbarHeight
return

; CTRL + ALT + HOME
^!Home::
WinGet, winid ,, A
WinGetTitle, winTitle, ahk_id %winid%
WinMove, %winTitle%, ,  StartCenter, 0, %WidthLarge%,   A_ScreenHeight-taskbarHeight
return

; CTRL + ALT + PAGE UP
^!PgUp::
WinGet, winid ,, A
WinGetTitle, winTitle, ahk_id %winid%
WinMove, %winTitle%, ,  StartRight, 0,  %WidthSmall%,   A_ScreenHeight-taskbarHeight
return