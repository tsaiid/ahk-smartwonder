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
#Include <Paste>
#Include <varExist>

; Options
ENABLE_KEY_COUNTER := 1
PRESERVE_CLIPBOARD := 0

; Global Variables
#Include MyScripts\vars.ahk

; Key/Mouse Counter
;; Bug: shoule be before RegEx HotStrings
#Include MyScripts\lib\keystroke-counter.ahk

; RegEx Hotstrings
;; Bug: need to be included first ???
#Include MyScripts\regex-hotstrings.ahk

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\dicom-sr.ahk
#Include MyScripts\lib\dicom-sr-ocr.ahk
#Include MyScripts\lib\date.ahk
#Include MyScripts\lib\string.ahk
#Include MyScripts\lib\supported-exam-patterns.ahk
#Include MyScripts\lib\libera-bmd.ahk

#IfWinActive ahk_group SmartWonder
  ;;; HotStrings
  #Include MyScripts\neuro.ahk
  #Include MyScripts\neuro\neuro-hotstrings.ahk

  #Include MyScripts\sono.ahk

  #Include MyScripts\chest-x-ray.ahk
  #Include MyScripts\kub.ahk
  #Include MyScripts\bone-x-ray.ahk
  #Include MyScripts\other-x-ray.ahk
  #Include MyScripts\comparisons.ahk
  #Include MyScripts\sono-guide.ahk

  #Include MyScripts\abdomen-ct.ahk
  #Include MyScripts\abdomen-mr.ahk
  #Include MyScripts\chest-ct.ahk

  #Include MyScripts\ct-guide.ahk

  #Include MyScripts\barium-enema.ahk
  #Include MyScripts\esophagraphy.ahk
  #Include MyScripts\ugi-small-intestine.ahk
  #Include MyScripts\intravenous-pyelogram.ahk
  #Include MyScripts\special.ahk

  #Include MyScripts\ms-mri.ahk

  #Include MyScripts\mri.ahk
  #Include MyScripts\others.ahk
  #Include MyScripts\abbreviations.ahk

  #Include MyScripts\spg.ahk
  #Include MyScripts\bone-density.ahk

  ;;; HotKeys
  #Include MyScripts\hotkey\delete-current-line.ahk

  ;;; Gui
  #Include MyScripts\gui-common.ahk
#IfWinActive

SetTitleMatchMode, 2

;#Include MyScripts\debug.ahk

; HotKeys Lib
#Include MyScripts\hotkey\selecting-tabs.ahk
#Include MyScripts\hotkey\get-previous-report.ahk
#Include MyScripts\hotkey\get-previous-report-with-images.ahk
#Include MyScripts\hotkey\get-previous-exam-date.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\get-side-str.ahk
;#Include MyScripts\hotkey\toggle-position-sync.ahk ; use SmartIris hotkey
#Include MyScripts\hotkey\toggle-hanging-protocol.ahk
#Include MyScripts\hotkey\insert-patient-exam-info.ahk
#Include MyScripts\hotkey\convert-case.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk
#Include MyScripts\hotkey\remapping-original-hotkeys.ahk
#Include MyScripts\hotkey\click-none-tb-none-ot.ahk
#Include MyScripts\hotkey\click-confirm.ahk
#Include MyScripts\hotkey\set-predefined-exam-flow.ahk
#Include MyScripts\hotkey\cgst32-related-mouse-control.ahk
#Include MyScripts\hotkey\go-to-image.ahk
#Include MyScripts\hotkey\detect-non-ascii-chars.ahk
#Include MyScripts\hotkey\get-mesa-scale.ahk

; Previously enabled but now disabled functions
;; The checking mechanism changed. No need to active current image before submitting since 2014-02.
;;#Include MyScripts\active-current-image-before-submit.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; 複製最近相關報告並開啟影像
^0::
Capslock & 0::
  ;GetPreviousReport(true, true)
  GetPreviousReportWithImages(true, true, 1, false, false)
Return

; 複製最近相關報告但不開啟影像
^!0::
  GetPreviousReport(true, false)
Return

; 不複製最近相關報告但開啟影像
^!#0::
  GetPreviousReport(false, true)
Return

; 吳主任版: 複製最近相關報告, 開啟最近兩次影像, 如皆在三個月內, 開另一更久遠的影像
^9::
  GetPreviousReportWithImages(true, true, 2, true, false)
Return

; 更改報告編輯區字體
^!+f::
  ChangeFont()
Return

; 將選取的文字改為字首大寫
^!t::
  ConvertSelectedTextToSentenceCase()
Return

; CopyIndication
^i::
Capslock & i::
  MyOrderDiag := CopyOrder()
  Paste(MyOrderDiag)
Return

; Delete current line
^l::
Capslock & l::
  DeleteCurrentLine()
Return

; Insert Previous Exam Date
^d::
Capslock & d::
  InsertPrevExamDate()
Return

; Renumber Seleted Text
^!n::
  RenumberSeletedText()
Return

; Deorder Seleted Text
^!+n::
  RenumberSeletedText(true)
Return

; Unorder Seleted Text
^!u::
  RenumberSeletedText(false, true, "-")
Return

; Click TB(-)Ot(-)
^!o::
  ClickNoneTBNoneOt()
Return

; Select tabs
; 報告編輯
^1::
  ClickReportEditing()
Return

; 歷史報告
^3::
  ClickPreviousReports()
Return

; 皆可確認報告
^s::
Capslock & s::
  ClickConfirm()
Return

; Set predefined exam flow
^!f::
  SetPredefinedExamFlow()
Return

; Get SPG or SEG report
^!s::
  DoSPGorSEG()
Return

; Detect Non-Ascii Chars
^!a::
  DetectNonAsciiChars()
Return

; Get Mesa Scale
^!m::
  GetMesaScale()
Return

#IfWinActive

; Insert Patient Exam Info
;; This hotkey cannot be included in SmartWonder window group
^h::
  InsertPatientExamInfo()
Return

^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.
