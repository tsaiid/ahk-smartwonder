; Settings
#NoEnv
#Hotstring EndChars `t
#Hotstring O
SetBatchLines -1  ; better performance: http://scsnake.blogspot.tw/2016/03/hotstring.html
SendMode, Input

; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; External Libraries
#Include ..\Lib\WBGet.ahk

;; My Own Lib
#Include ..\MyScripts\lib\frame-wait.ahk
#Include ..\MyScripts\hotkey\get-mesa-scale.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder
; Get Mesa Scale
^!m::
  GetMesaScale()
Return
#IfWinActive
