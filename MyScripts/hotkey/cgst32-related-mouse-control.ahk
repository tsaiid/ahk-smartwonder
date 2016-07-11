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

#IfWinActive ahk_class MdiFrame

; Copy
^c::
  MouseGetPos, xpos, ypos
  Click, 117, 64
  MouseMove, %xpos%, %ypos%
Return

; Paste
^v::
  MouseGetPos, xpos, ypos
  Click, 142, 64
  MouseMove, %xpos%, %ypos%
Return

; Execute
^e::
  MouseGetPos, xpos, ypos
  Click, 242, 64
  MouseMove, %xpos%, %ypos%
Return
#IfWinExist