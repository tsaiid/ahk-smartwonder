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

; With Parameters
#Include Lib\Hotstrings.ahk
hotstrings("p/lsp(\d)(\d)\s", "plsp")
Return

plsp:
    start := $1
    end := $2
	if (end <= start and end != 1)
		return
    If (start = 1 and start = end) ; L1~S1
    {
      range := "L1~S1"
      cage := "L1-2, L2-3, L3-4, L4-5, L5-S1"
    }
    Else
    {
		range = L%start%~
		if (end = 1)
		{
			range = %range%S1
		}
		else
		{
			range = %range%L%end%
		}
		cage = L%start%
      	Loop
		{
			startStr = %start%
			if (++start = end)
			{
				cage = %cage%-%end%
				break
			}
			else
				if (end = 1 and start = 6)
				{
					cage = %cage%-S1
					break
				}
				else
					endStr = %start%
			cage = %cage%-%endStr%, L%endStr%
		}
    }
	rangeStr = Post laminectomy, transpedicular screws, rods fixation at %range%.
	cageStr = Post interbody cage placement at %cage%.
    SendInput, %rangeStr%
	SendInput, {Enter}
	SendInput, %cageStr%
Return

#z::Run www.autohotkey.com

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

#Hotstring EndChars `t

#Include MyScripts\chest-x-ray.ahk
#Include MyScripts\kub.ahk
#Include MyScripts\bone-x-ray.ahk
#Include MyScripts\other-x-ray.ahk
#Include MyScripts\sono-guide.ahk

SetTitleMatchMode, 2

#Include MyScripts\active-current-image-before-submit.ahk
#Include MyScripts\selecting-tabs.ahk
#Include MyScripts\get-previous-report.ahk

; HotKey
;; for SmartWonder
#IfWinActive, tedpc-
;;; Select whole line and delete
$^l::
	Send {Home}+{End}
	Send {Del}
return

;;; Open Previous Image and Report
$^j::
;	SetMouseDelay, 50
	MouseGetPos, xpos,ypos
	Click 700, 180		; 歷史報告
	;Click 700, 325		; 最近檢查
	Click 270, 325		; 開影像
	Click 1080, 741		; 複製報告
	Click 1080, 759		; 複製報告
	Click 1080, 777		; 複製報告
	Click 1080, 795		; 複製報告
	Click 1080, 813		; 複製報告
	Click 1080, 831		; 複製報告
	Click 300, 180		; 回報告區
	MouseMove, %xpos%, %ypos%

;	wb := IEGet()
return
#IfWinActive
