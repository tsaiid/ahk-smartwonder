#IfWinActive ahk_class TImgViewPort

$q::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 812, 167
  MouseMove, %xpos%, %ypos%
Return

$w::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 1624, 167
  MouseMove, %xpos%, %ypos%
Return

$e::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 2431, 167
  MouseMove, %xpos%, %ypos%
Return

$r::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 3258, 167
  MouseMove, %xpos%, %ypos%
Return

$a::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 812, 1084
  MouseMove, %xpos%, %ypos%
Return

$s::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 1624, 1084
  MouseMove, %xpos%, %ypos%
Return

$d::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 2431, 1084
  MouseMove, %xpos%, %ypos%
Return

$f::
  ;CoordMode, Mouse, Relative
  MouseGetPos, xpos, ypos
  Click, 3258, 1084
  MouseMove, %xpos%, %ypos%
Return

#IfWinExist