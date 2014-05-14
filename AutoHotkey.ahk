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
#IfWinActive

SetTitleMatchMode, 2

#Include MyScripts\debug.ahk
#Include MyScripts\selecting-tabs.ahk
#Include MyScripts\get-previous-report.ahk
#Include MyScripts\change-font.ahk
#Include MyScripts\copy-order.ahk
#Include MyScripts\toggle-position-sync.ahk
#Include MyScripts\insert-patient-exam-info.ahk

; Previously enabled but now disabled functions
;; The checking mechanism changed. No need to active current image before submitting since 2014-02.
;;#Include MyScripts\active-current-image-before-submit.ahk

; HotKey
;; for SmartWonder
#IfWinActive ahk_group SmartWonder
;;; Select whole line and delete
$^l::
	;Send {Home}+{End}

  ; check selected string
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  ReportContent := tabIframe2.document.getElementsByName("ReportContent")[0]

  ; get Caret
  ;; ref: http://stackoverflow.com/a/3373056
  textRange := tabIframe2.document.selection.createRange()

  len := StrLen(ReportContent.value)
  normalizedValue := ReportContent.value
  StringReplace, normalizedValue, normalizedValue, `r`n, `n, All

  textInputRange := ReportContent.createTextRange()
  textInputRange.moveToBookmark(textRange.getBookmark())

  endRange := ReportContent.createTextRange()
  ;endRange.setEndPoint("EndToStart", textInputRange)
  endRange.collapse(false)

  ;a := endRange.text
  ;MsgBox % a

  if (textInputRange.compareEndPoints("StartToEnd", endRange) > -1) {
    startPos := endPos := len
  } else {
    startPos := -textInputRange.moveStart("character", -len)
    startPos += normalizedValue.slice(0, startPos).split("\n").length - 1

    if (textInputRange.compareEndPoints("EndToEnd", endRange) > -1) {
      endPos := len
    } else {
      endPos := -textInputRange.moveEnd("character", -len)
      endPos += normalizedValue.slice(0, endPos).split("\n").length - 1
    }
  }

  ; get current line number
  textToCursor := normalizedValue
  ;StringReplace, currLine, currLine, `r`n, ¢, All
  StringLeft textToCursor, textToCursor, endPos
  StringSplit, ary, textToCursor, `n
  currLine := ary0
  If (endPos = 0) {
    currLine := 1
  }

  ; parse and delete current line
  finalText := ""
  StringSplit, ary, normalizedValue, `n
  Loop %ary0%
  {
    If (A_Index != currLine) {
      finalText .= ary%A_Index%
      If (A_Index != ary0) {
        finalText .= "`n"
      }
    } Else {
      ;MsgBox % A_Index
    }
  }
  ;MsgBox % ary.join("`n")
  ;MsgBox % finalText
  ReportContent.value := finalText


;MsgBox % ReportContent.value
;MsgBox % endPos

  ;StringReplace, currLine, currLine, `n, ¢, All
  ;StringSplit, ary, currLine, ¢

  ;MsgBox % startPos
  ;MsgBox % StrLen(currLine)

  ;MsgBox % rc.text.length

  ;selectedText := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.selection.createRange().htmlText

  ;if (StrLen(selectedText) > 0) {
  ;  Send {Del}
  ;} Else {
  ;  Send {BS}
  ;}
  ;MsgBox % selectedText



return
#IfWinActive
