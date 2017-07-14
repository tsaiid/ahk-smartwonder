; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; External Libraries
#Include Lib\WBGet.ahk
#Include Lib\Paste.ahk
#Include Lib\varExist.ahk

; Options
ENABLE_KEY_COUNTER := 1
PRESERVE_CLIPBOARD := 0

; Global Variables
#Include MyScripts\vars.ahk

; Settings
;#Hotstring EndChars `t
;#Hotstring O

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\date.ahk
#Include MyScripts\lib\supported-exam-patterns.ahk

;;; HotStrings
#IfWinActive ahk_group SmartWonder
::nic::
  StringWithPrevExamDate("No obvious interval change as compared with previous study")
Return

::pc::
  StringWithPrevExamDate("Progressive change as compared with previous study")
Return

::rc::
  StringWithPrevExamDate("Regressive change as compared with previous study")
Return
#IfWinActive

; HotKeys
#Include MyScripts\hotkey\get-previous-report.ahk
#Include MyScripts\hotkey\get-previous-report-with-images.ahk
#Include MyScripts\hotkey\get-previous-exam-date.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk
#Include MyScripts\hotkey\click-none-tb-none-ot.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; 複製最近相關報告並開啟影像
^0::
  GetPreviousReport(true, true)
  ;GetPreviousReportWithImages(true, true, 1, false, false)
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
