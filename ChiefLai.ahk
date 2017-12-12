; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Global Variables

; Settings
#Hotstring EndChars `t
#Hotstring O

; External Libraries
#Include <WBGet>
#Include <Paste>

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\date.ahk
#Include MyScripts\lib\supported-exam-patterns.ahk

#IfWinActive ahk_group SmartWonder
  ;;; HotStrings
  #Include MyScripts\neuro-lai.ahk
#IfWinActive

; HotKeys
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\insert-patient-exam-info.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk
#Include MyScripts\hotkey\toggle-hanging-protocol.ahk
#Include MyScripts\hotkey\detect-non-ascii-chars.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; CopyIndication
$^i::
  MyOrderDiag := CopyOrder()
  Paste(MyOrderDiag, 0)
Return

; Renumber Seleted Text
$^!n::
  RenumberSeletedText()
Return

; Detect Non-Ascii Chars
^!a::
  DetectNonAsciiChars()
Return

#IfWinActive

; Insert Patient Exam Info
;; This hotkey cannot be included in SmartWonder window group
$^h::
  InsertPatientExamInfo()
Return