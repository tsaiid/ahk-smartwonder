#IfWinActive ahk_class CGST32

; Copy
^c::
  MouseGetPos, xpos, ypos
  Click, 143, 66
  MouseMove, %xpos%, %ypos%
Return

; Paste
^v::
  MouseGetPos, xpos, ypos
  Click, 169, 66
  MouseMove, %xpos%, %ypos%
Return

#IfWinExist