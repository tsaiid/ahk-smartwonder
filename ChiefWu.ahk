; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Global Variables
#Include MyScripts\vars.ahk

; Settings
;#Hotstring EndChars `t
;#Hotstring O

; External Libraries
#Include <WBGet>
#Include <Paste>

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\date.ahk
#Include MyScripts\lib\supported-exam-patterns.ahk

;;; HotStrings
#IfWinActive ahk_group SmartWonder
::IC0::
StringWithPrevExamDate("NO interval change from the latest exam")
Return

::OIC0::
StringWithPrevExamDate("Other than above findings, there is NO Other imaging interval CHANGES from the latest study")
Return

::IC1::
StringWithPrevExamDate("mild PROGRESSIVE change from the prior exam")
Return

::IC2::
StringWithPrevExamDate("moderate PROGRESSIVE change from the prior exam")
Return

::IC3::
StringWithPrevExamDate("remarkable PROGRESSIVE change from prior exam")
Return

::IC-0::
StringWithPrevExamDate("NO FURTHER improvement from the latest exam")
Return

::IC-1::
StringWithPrevExamDate("mild IMPROVEMENT as compared with the latest examination")
Return

::IC-2::
StringWithPrevExamDate("moderate IMPROVEMENT but considerable residual change still noted as compared with the latest examination")
Return

::IC-3::
StringWithPrevExamDate("remarkable IMPROVEMENT as compared with the latest examination")
Return

::ic+-::
StringWithPrevExamDate("SOME lesions improved and SOME progressed; as a whole, NO remarkable change")
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
^z::
  GetPreviousReportWithImages(true, true, 1, false, false, false)
Return

; 複製最近相關報告並開啟最近兩張及三個月前影像
^+z::
  GetPreviousReportWithImages(true, true, 2, true, false, false)
Return

; CopyIndication
^i::
  MyOrderDiag := CopyOrder()
  Paste(MyOrderDiag)
Return

; Renumber Seleted Text
^!n::
  RenumberSeletedText()
Return

; Click TB(-)Ot(-)
^t::
  ClickNoneTBNoneOt()
Return

#IfWinActive
