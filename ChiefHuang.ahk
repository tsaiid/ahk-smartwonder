; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Global Variables
#Include MyScripts\vars.ahk

; Settings
;#Hotstring EndChars `t
#Hotstring O

; External Libraries
#Include <WBGet>
#Include <Paste>

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\supported-exam-patterns.ahk

; HotKeys
#Include MyScripts\hotkey\get-previous-report-with-images.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\renumber-selected-text.ahk
#Include MyScripts\hotkey\detect-non-ascii-chars.ahk

; Define hotkeys
#IfWinActive ahk_group SmartWonder

; 複製最近相關報告並開啟影像
^0::
  GetPreviousReportWithImages(true, true, 1, false, false)
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
