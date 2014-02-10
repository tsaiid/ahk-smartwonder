#IfWinActive, tedpc-
;;; Move mouse to SmartIris to activate current image, and then confirm the report (^k).
$^k::
  MouseGetPos, xpos,ypos
  MouseMove, 1919, 0
  SetMouseDelay, 250
  MouseMove, 1921, 0
  SetMouseDelay, 0
  MouseMove, %xpos%, %ypos%
  Send ^k
return

$^!k::
  Send ^k
Return
#IfWinActive
