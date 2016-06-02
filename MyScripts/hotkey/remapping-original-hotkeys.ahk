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

j::
  SendEvent {Down}
Return

k::
  SendEvent {Up}
Return

1Joy2::
  SendEvent {F11}
Return

1Joy3::
  SendEvent {F10}
Return

1Joy4::
  SendEvent {F5}
Return

1Joy5::
  SendEvent ^!+p
Return

1Joy6::
  SendEvent ^!+s
Return

1Joy7::
  SendEvent ^i
Return

1Joy9::
  SendEvent ^+]
Return

#IfWinActive

;; for global windows environment
#Space::
  SendEvent ^{Space}  ; Need to send event to work in VirtualBox
Return

;LWin & Tab::AltTab    ; Mimick Alt-Tab
                      ; Alt-tab hotkeys are not affected by #IfWin: they are in effect for all windows.

#c::^c
#v::^v
#x::^x
#w::^w
#t::^t
#r::^r
#s::^s
#z::^z
#a::^a
