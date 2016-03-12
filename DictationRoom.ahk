; For Dictation Room Use
; Supports: LiberaBMD, dicom-sr

; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Settings
#Hotstring EndChars `n

; External Libraries
#Include <WBGet>
#Include <Paste>

;; My Own Lib
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\lib\frame-wait.ahk
#Include MyScripts\lib\libera-bmd.ahk
#Include MyScripts\lib\dicom-sr.ahk

;; HotStrings
#Include MyScripts\sono.ahk

#IfWinActive ahk_group SmartWonder

; to get bone density report by ajax.
$^l::
  LiberaBMDSR()
Return

; to get STAS template with SR data
; use Hotstring "stas" from MyScripts\sono.ahk

#IfWinActive