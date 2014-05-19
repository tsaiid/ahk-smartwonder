; HotKey
;; Renumbering the selected text
;; for SmartWonder

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

  ; renumbering the selected text
  If (StrLen(textRange.text) > 0) {
    selectedText := textRange.text
    finalText := ""
    Loop, Parse, selectedText, `n
    {
      finalText .= A_Index . ". " . RegExReplace(A_LoopField, "^\d+\.(\s*)(.*)", "$2")
      ;MsgBox, %A_Index%. %A_LoopField%
    }

    Paste(finalText)
  }
Return
#IfWinActive
