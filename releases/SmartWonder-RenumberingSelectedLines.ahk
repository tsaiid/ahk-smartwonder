; SmartWonder Extension
; Renumbering Selected Lines

; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; WBGet()
; Access an IE object by WinTitle and Internet Explorer_Server Number
; By jethrow
; http://www.autohotkey.com/board/topic/47052-basic-webpage-controls-with-javascript-com-tutorial/

WBGet(WinTitle="ahk_class IEFrame", Svr#=1) {               ;// based on ComObjQuery docs
  static msg := DllCall("RegisterWindowMessage", "str", "WM_HTML_GETOBJECT")
       , IID := "{0002DF05-0000-0000-C000-000000000046}"   ;// IID_IWebBrowserApp
;//    , IID := "{332C4427-26CB-11D0-B483-00C04FD90119}"   ;// IID_IHTMLWindow2
  SendMessage msg, 0, 0, Internet Explorer_Server%Svr#%, %WinTitle%
  if (ErrorLevel != "FAIL") {
    lResult:=ErrorLevel, VarSetCapacity(GUID,16,0)
    if DllCall("ole32\CLSIDFromString", "wstr","{332C4425-26CB-11D0-B483-00C04FD90119}", "ptr",&GUID) >= 0 {
       DllCall("oleacc\ObjectFromLresult", "ptr",lResult, "ptr",&GUID, "ptr",0, "ptr*",pdoc)
       return ComObj(9,ComObjQuery(pdoc,IID,IID),1), ObjRelease(pdoc)
    }
  }
}

#IfWinActive ahk_group SmartWonder
$^!n::
  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  ReportContent := tabIframe2.document.getElementsByName("ReportContent")[0]

  ; get Caret
  ;; ref: http://stackoverflow.com/a/3373056
  textRange := tabIframe2.document.selection.createRange()

  totalLen := StrLen(ReportContent.value)
  normalizedValue := ReportContent.value
  StringReplace, normalizedValue, normalizedValue, `r`n, `n, All

  textInputRange := ReportContent.createTextRange()
  textInputRange.moveToBookmark(textRange.getBookmark())

  endRange := ReportContent.createTextRange()
  endRange.collapse(false)

  if (textInputRange.compareEndPoints("StartToEnd", endRange) > -1) {
    startPos := endPos := totalLen
  } else {
    startPos := -textInputRange.moveStart("character", -totalLen)
    if (textInputRange.compareEndPoints("EndToEnd", endRange) > -1) {
      endPos := totalLen
    } else {
      endPos := -textInputRange.moveEnd("character", -totalLen)
    }
  }

  StringLeft, leftStr, normalizedValue, startPos
  StringSplit, strAry, leftStr, `n
  If (startPos) {
    startLine := strAry0
    startLineOffset := StrLen(strAry%startLine%)
  } Else {  ; special condition, at the beginning: startPos == 0
    startLine := 1
    startLineOffset := 0
  }

  strAry1 := "" ; strange hack. traditional array do not GC ?
  StringLeft, leftStr, normalizedValue, endPos
  StringSplit, strAry, leftStr, `n
  StringSplit, norAry, normalizedValue, `n
  If (endPos) {
    endLine := strAry0
  } Else {  ; special condition, at the beginning and no selection: endPos == 0
    endLine := 1
  }

  isEndNewLine := 0 ; strange hack. Variable do not GC ?
  If (StrLen(strAry%endLine%) = 0 && endLine > 1 && endLine > startLine) {
    isEndNewLine := 1
    endLine -= 1  ; 若最後一個字元是 \n 會多算一行
  }
  endLineOffset := StrLen(norAry%endLine%) - StrLen(strAry%endLine%)

  norLineText := norAry%endLine%
  norLineTextLen := StrLen(norAry%endLine%)
  endLineText := strAry%endLine%

  textRange.moveStart("character", -startLineOffset)
  textRange.moveEnd("character", endLineOffset)

  ; numbering the selected text
  selectedText := textRange.text
  If (StrLen(selectedText) > 0) {
    finalText := ""
    currLineNo := 0
    Loop, Parse, normalizedValue, `n
    {
      If (A_Index >= startLine && A_Index <= endLine) {
        If (!RegExMatch(A_LoopField, "^\s*$")) {
          finalText .= ++currLineNo . ". " . RegExReplace(A_LoopField, "^(\s*)((\d+\.)|([-\+\*]))(\s*)(.*)", "$6")

          If (A_Index < endLine)
            finalText .= "`n"
        }
        Else {
          ; if all line is empty, ignore it, and do not append an \n
          ; finalText .= A_LoopField
        }

      }
    }
    If (isEndNewLine){
      finalText .= "`n"
    }

    textRange.text := finalText
  } Else {
    ; No selection. Do nothing.
  }

Return
#IfWinActive
