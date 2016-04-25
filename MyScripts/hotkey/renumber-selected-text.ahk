; HotKey
;; Renumbering the selected text
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
RenumberSeletedText(deOrder = false, keepEmptyLine = false, itemChar = ""){
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
          If (!deOrder && endLine - startLine > 0) { ; do not add line number if only 1 line
            orderChar := (StrLen(itemChar) > 0 ? itemChar : ++currLineNo . ".")
            finalText .= orderChar . " "
          }
          finalText .= RegExReplace(A_LoopField, "^(\s*)((\d+\.)|([-\+\*])|(\(?\d+\)))?(\s*)(\w?)(.*)", "$u7$8")

          If (A_Index < endLine)
            finalText .= "`n"
        } Else {
          ; use a para to control if all line is empty, ignore it, and do not append an \n
          If (keepEmptyLine) {
            finalText .= A_LoopField . "`n"
          }
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
}
#IfWinActive
