GoToImage(imgNo){
  If (WinActive("ahk_class TImgViewPort")) {
    ; calculate how many windows.
    WinGetPos, , , WindowWidth, WindowHeight
    ControlGetPos, , , ViewWidth, ViewHeight, TLEADAnn3, A
    MaxRow := Floor((WindowHeight - 64 * 2) / ViewHeight)
    MaxColumn := Floor(WindowWidth / ViewWidth)

    ; calculate where is the mouse
    MouseGetPos, xpos, ypos

    Column := Floor(xpos / (10 + ViewWidth))
    Row := Floor((ypos - 20 * 2 - 64 * 2) / (30 + ViewHeight))
    targetX := (10 + ViewWidth) * Column + 40
    targetY := 20 + 64 * 2 + (30 + ViewHeight) * Row + 20

    ;MsgBox, %xpos%, %ypos%, x = %targetX%, y = %targetY%

    Click, Right, %targetX%, %targetY%
    Sleep 300
    If WinExist("ahk_class TTrackForm") {
      Click, 30, 50
      Send %imgNo%{TAB 3}{ENTER}{UP}{DOWN}
      MouseMove, %xpos%, %ypos%
    } Else {
      MsgBox, no TTrackForm!?
    }
  }
}
