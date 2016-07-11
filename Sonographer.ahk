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
#Include <WBGet>

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\smartwonder-common.ahk

SetTitleMatchMode, 2

; HotKeys Lib
#Include MyScripts\hotkey\status-of-us-rct-without-image.ahk
#Include MyScripts\hotkey\query-prev-images-for-sonographer.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder
; Status of US RCT Without Image
^u::
  StatusOfUsRctWithoutImage()
Return
#IfWinActive

#IfWinActive, 高雄榮總-攝影室播放系統WEB管理介面
^p::
  QueryPrevImagesForSonographer()
Return
#IfWinActive
