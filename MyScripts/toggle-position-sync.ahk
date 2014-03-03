#IfWinExist ahk_class TImgViewPort

$^!p::
  CoordMode, Mouse, Screen
  MouseGetPos, xpos,ypos
  Click, Right, 2500, -500
  Click, 2530, -300
  MouseMove, %xpos%, %ypos%
Return

#IfWinExist