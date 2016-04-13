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

;; for global windows environment
#Space::^Space
#c::^c
#v::^v
#x::^x
#w::^w
#t::^t
#r::^r
#s::^s
#z::^z
