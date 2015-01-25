#IfWinActive ahk_class TImgViewPort

ToggleHangingProtocol(Row, Column){
  ; calculate how many windows.
  WinGetPos, , , WindowWidth, WindowHeight
  ControlGetPos, , , ViewWidth, ViewHeight, TLEADAnn3, A
  MaxRow := Floor((WindowHeight - 64 * 2) / ViewHeight)
  MaxColumn := Floor(WindowWidth / ViewWidth)

  If (Row * Column > 0 && Row <= MaxRow && Column <= MaxColumn) {
    MouseGetPos, xpos, ypos
    targetX := (10 + ViewWidth) * Column - 15
    targetY := 20 + 64 * 2 + (30 + ViewHeight) * (Row - 1) + 20
    Click %targetX% %targetY%
    MouseMove, %xpos%, %ypos%
  }
}

$q::
  ToggleHangingProtocol(1,1)
Return

$w::
  ToggleHangingProtocol(1,2)
Return

$e::
  ToggleHangingProtocol(1,3)
Return

$r::
  ToggleHangingProtocol(1,4)
Return

$a::
  ToggleHangingProtocol(2,1)
Return

$s::
  ToggleHangingProtocol(2,2)
Return

$d::
  ToggleHangingProtocol(2,3)
Return

$f::
  ToggleHangingProtocol(2,4)
Return

$z::
  ToggleHangingProtocol(3,1)
Return

$x::
  ToggleHangingProtocol(3,2)
Return

$c::
  ToggleHangingProtocol(3,3)
Return

$v::
  ToggleHangingProtocol(3,4)
Return

#IfWinActive