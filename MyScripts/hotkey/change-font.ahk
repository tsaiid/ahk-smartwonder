; HotKey
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
;;; Select Tabs
ChangeFont(font = "Source Code Pro") {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  FrameWait(frmTabIframe2)
  txtReportContent := frmTabIframe2.document.getElementsByName("ReportContent")[0]
  txtReportContent.style.fontFamily := font
  ;txtReportContent.style.fontSize := "12pt"
  return
}
#IfWinActive