#IfWinActive ahk_class TImgViewPort

$^!+p::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, Right, 200, 170
  Click, 240, 370
  MouseMove, %xpos%, %ypos%
Return

#IfWinActive