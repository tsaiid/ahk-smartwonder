; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Global Variables
#Include MyScripts\vars.ahk

; RegEx Hotstrings
;; Bug: need to be included first ???
#Include MyScripts\regex-hotstrings.ahk

; Settings
#Hotstring EndChars `t

; External Libraries
#Include Lib\WBGet.ahk
#Include Lib\Paste.ahk

;; My Own Lib
#Include MyScripts\lib\frame-wait.ahk

#IfWinActive ahk_group SmartWonder
  #Include MyScripts\others.ahk
  #Include MyScripts\abbreviations.ahk

  #Include MyScripts\chest-x-ray.ahk
  #Include MyScripts\kub.ahk
  #Include MyScripts\bone-x-ray.ahk
  #Include MyScripts\other-x-ray.ahk
  #Include MyScripts\sono-guide.ahk

  #Include MyScripts\sono.ahk
  #Include MyScripts\abdomen-ct.ahk
  #Include MyScripts\chest-ct.ahk

  #Include MyScripts\ct-guide.ahk

  #Include MyScripts\neuro.ahk

  #Include MyScripts\barium-enema.ahk
  #Include MyScripts\esophagraphy.ahk
  #Include MyScripts\ugi-small-intestine.ahk
  #Include MyScripts\intravenous-pyelogram.ahk
  #Include MyScripts\special.ahk

  ;;; HotKeys
  #Include MyScripts\hotkey\delete-current-line.ahk
#IfWinActive

SetTitleMatchMode, 2

#Include MyScripts\debug.ahk

; HotKeys
#Include MyScripts\hotkey\selecting-tabs.ahk
#Include MyScripts\hotkey\get-previous-report.ahk
#Include MyScripts\hotkey\change-font.ahk
#Include MyScripts\hotkey\copy-order.ahk
#Include MyScripts\hotkey\toggle-position-sync.ahk
#Include MyScripts\hotkey\insert-patient-exam-info.ahk
#Include MyScripts\hotkey\convert-case.ahk

; Previously enabled but now disabled functions
;; The checking mechanism changed. No need to active current image before submitting since 2014-02.
;;#Include MyScripts\active-current-image-before-submit.ahk

