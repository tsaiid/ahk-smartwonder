; HotKey
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
^h::
  SendEvent {BS}
Return

^d::
  SendEvent {DEL}
Return

^n::
  SendEvent {Down}
Return

^p::
  SendEvent {Up}
Return

^f::
  SendEvent {Right}
Return

^b::
  SendEvent {Left}
Return

^a::
  SendEvent {Home}
Return

^e::
  SendEvent {End}
Return

#a::
  SendEvent ^a
Return

#z::
  SendEvent ^z
Return
#IfWinActive

;; for SmartIris
#IfWinActive ahk_class TImgViewPort

,::
  SendEvent ^+l
Return

.::
  SendEvent ^+`;
Return

/::
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

; for YODA 2 use

-::
  SendEvent {F11}
Return

5::
  SendEvent {F5}
Return

6::
  SendEvent {F6}
Return

0::
  SendEvent {F10}
Return

o::
  SendEvent {Home}
Return

l::
  SendEvent {End}
Return


/*

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

*/

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
/*
#w::^w
#t::^t
#r::^r
#s::^s
#z::^z
#a::^a
*/
