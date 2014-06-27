; HotKey
;; Delete current line
;; for SmartWonder
#IfWinActive ahk_group SmartWonder
;;; Select whole line and delete
DeleteCurrentLine(){
  Send {Home}+{End}

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
    ;startPos += normalizedValue.slice(0, startPos).split("\n").length - 1
    ;; seems no effect

    if (textInputRange.compareEndPoints("EndToEnd", endRange) > -1) {
      endPos := totalLen
    } else {
      endPos := -textInputRange.moveEnd("character", -totalLen)
      ;endPos += normalizedValue.slice(0, endPos).split("\n").length - 1
      ;; seems no effect
    }
  }

  ; delete line according to the selected text
  If (StrLen(textRange.text) > 0) {
    If (endPos < totalLen) {
      Send {Del}
    } Else {
      Send {BS 2}
      Send {Home}
    }
  } Else {
    If (endPos < totalLen) {
      Send {Del}
    } else {
      Send {BS}
      Send {Home}
    }
  }
}
#IfWinActive
