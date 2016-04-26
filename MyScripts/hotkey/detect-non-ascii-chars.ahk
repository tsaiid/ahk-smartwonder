; HotKey
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
; Detect Non-Ascii Chars
; SmartWonder allows only ASCII (32-127) chars.
; Detect the first out-of-range char and select it for correction.
DetectNonAsciiChars() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  FrameWait(frmTabIframe2)
  ReportContentList := frmTabIframe2.document.getElementsByName("ReportContent")
  If (ReportContentList.length > 0) {
    ReportContent := frmTabIframe2.document.getElementsByName("ReportContent")[0]
    If (ReportContent) {
      FoundPos := RegExMatch(ReportContent.innerText, "[^\x20-\x7F\r\n]", NonAsciiChar)
      If (FoundPos > 0) {
        textRange := ReportContent.createTextRange()
        textRange.findText(NonAsciiChar)
        textRange.select()
        ;MsgBox, %FoundPos%
      }
    }
  }
}
#IfWinActive