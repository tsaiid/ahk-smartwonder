; HotKey
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
#IfWinActive

;; for SmartIris
#IfWinActive ahk_class TImgViewPort

l::
  SendEvent ^+l
Return

`;::
  SendEvent ^+`;
Return

'::
  SendEvent ^+'
Return

[::
  SendEvent ^+[
Return

]::
  SendEvent ^+]
Return

#IfWinActive