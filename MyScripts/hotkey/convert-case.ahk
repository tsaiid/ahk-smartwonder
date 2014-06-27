; HotKey
; Convert selected text to sentence case.
#IfWinActive ahk_group SmartWonder
ConvertSelectedTextToSentenceCase() {
  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  ReportContent := tabIframe2.document.getElementsByName("ReportContent")[0]

  selectedText := tabIframe2.document.selection.createRange().text
  If (StrLen(selectedText)) {
    StringLower, selectedText, selectedText
    selectedText := RegExReplace(selectedText, "((?:^|[.!?]\s+)[a-z])", "$u1")
    Paste(selectedText, 0)
  }
}
#IfWinActive
