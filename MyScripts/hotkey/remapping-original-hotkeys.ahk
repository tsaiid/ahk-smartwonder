; HotKey
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
#IfWinActive

;; for SmartIris
#IfWinActive ahk_class TImgViewPort

l::
  Send, ^+l
Return

`;::
  Send, ^+`;
Return

'::
  Send, ^+'
Return

[::
  Send, ^+[
Return

]::
  Send, ^+]
Return

#IfWinActive