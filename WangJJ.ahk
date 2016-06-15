; Settings
#NoEnv
#Hotstring EndChars `t
#Hotstring O
SetBatchLines -1  ; better performance: http://scsnake.blogspot.tw/2016/03/hotstring.html
SendMode, Input
SetKeyDelay, -1, -1

; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; External Libraries
#Include <WBGet>
#Include <Paste>

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\dicom-sr.ahk
#Include MyScripts\lib\dicom-sr-ocr.ahk
#Include MyScripts\lib\date.ahk
#Include MyScripts\lib\string.ahk

#IfWinActive ahk_group SmartWonder
  #Include MyScripts\spg.ahk
#IfWinActive

SetTitleMatchMode, 2

#Include MyScripts\hotkey\change-font.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; Get SPG or SEG report
^!s::
  DoSPGorSEG()
Return

#IfWinActive
