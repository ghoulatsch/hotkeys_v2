; === === === ===
; === GLOBAL
; === === === ===

; === search Duckduckgo
^+s::
{
Send("^c")
Sleep(50)
Run("https://duckduckgo.com/?t=ffab&q=" A_Clipboard)
}

; === search OpenStreetMap
^+d::
{
Send("^c")
Sleep(50)
A_Clipboard := StrReplace(A_Clipboard,"`r`n","`, ")
while InStr(A_Clipboard,"  ")
{
	A_Clipboard := StrReplace(A_Clipboard,"  "," ")
}
A_Clipboard := StrReplace(A_Clipboard," `,","`,")
;MsgBox(A_Clipboard)
Run("https://www.openstreetmap.org/search?query=" A_Clipboard)
}

; === ask perplexity
^+a::
{
Run("https://www.perplexity.ai/")
}

; === open Rechner
^+r::
{
Run("C:\Windows\System32\calc.exe")
}

; === === === ===
; === HOTSTRING
; === === === ===

; === date
::td::
{
CurrentDateTime := FormatTime(, "yyyyMMdd")
SendInput(CurrentDateTime)
return
}

; === mail
::@@::
{
SendInput("brot@koerbchen.de")
return
}

; === SYMBOLS
::~~::
{
SendInput("≈ ")
return
}

::O/::
{
SendInput("∅")
return
}

; === === === ===
; === TOGGLE
; === === === ===

; === NumPad , to .

toggle:=0
^NumpadDot::
{	 
	global toggle
	toggle := !toggle
}
#HotIf toggle
{
	NumpadDot::.
}
#HotIf

; === === === ===
; === KILL
; === === === ===

^+k::ExitApp 

; === === === ===
