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
#Include MyScripts\hotkey\get-previous-report-with-far-image.ahk
#Include MyScripts\hotkey\get-previous-exam-date.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\insert-patient-exam-info.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; 複製最近相關報告並開啟影像
^1::
  GetPreviousReport(true, true)
Return

; 複製最近相關報告並開啟最近兩張及三個月前影像
^2::
  GetPreviousReportWithImages(true, true, 2, false, true)
Return

; 複製最近相關報告並開啟最近兩張及三個月前影像
^3::
  GetPreviousReportWithImages(true, true, 2, true, true)
Return

; 複製最近相關報告但不開啟影像
;$^!0::
;  GetPreviousReport(true, false)
;Return

; CopyIndication
$^i::
  MyOrderDiag := CopyOrder()
  Paste(MyOrderDiag)
Return

; Insert Patient Exam Info
$^h::
  InsertPatientExamInfo()
Return

; Renumber Seleted Text
$^!n::
  RenumberSeletedText()
Return

#IfWinActive
