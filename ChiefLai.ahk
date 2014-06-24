; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Global Variables
#Include MyScripts\vars.ahk

; Settings
#Hotstring EndChars `t
#Hotstring O

; External Libraries
#Include Lib\WBGet.ahk
#Include Lib\Paste.ahk

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\date.ahk

#IfWinActive ahk_group SmartWonder
  ;;; HotStrings
  #Include MyScripts\neuro.ahk
#IfWinActive

; HotKeys
#Include MyScripts\hotkey\get-previous-report.ahk
#Include MyScripts\hotkey\get-previous-exam-date.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\insert-patient-exam-info.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk
