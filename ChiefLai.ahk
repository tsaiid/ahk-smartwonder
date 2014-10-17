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
#Include MyScripts\lib\supported-exam-patterns.ahk

#IfWinActive ahk_group SmartWonder
  ;;; HotStrings
  #Include MyScripts\neuro.ahk
  #Include MyScripts\comparisons.ahk
#IfWinActive

; HotKeys
#Include MyScripts\hotkey\get-previous-report.ahk
#Include MyScripts\hotkey\get-previous-report-with-images.ahk
#Include MyScripts\hotkey\get-previous-exam-date.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\insert-patient-exam-info.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk
#Include MyScripts\hotkey\toggle-hanging-protocol.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; 複製最近相關報告並開啟影像
^0::
  GetPreviousReportWithImages(true, true, 1, false, false)
Return

; 複製最近相關報告並開啟影像
^1::
  GetPreviousReportWithImages(true, true, 1, false, false)
Return

; 複製最近相關報告並開啟最近兩張及三個月前影像
^2::
  GetPreviousReportWithImages(true, true, 2, false, false)
Return

; 複製最近相關報告並開啟最近兩張及三個月前影像
^3::
  GetPreviousReportWithImages(true, true, 2, true, false)
Return

; CopyIndication
$^i::
  MyOrderDiag := CopyOrder()
  Paste(MyOrderDiag)
Return

; Renumber Seleted Text
$^!n::
  RenumberSeletedText()
Return

#IfWinActive

; Insert Patient Exam Info
;; This hotkey cannot be included in SmartWonder window group
$^h::
  InsertPatientExamInfo()
Return