; HotKey
;; for SmartWonder

#IfWinActive, VGHKS-
;;; Select Tabs
ChangeFont(font = "Source Code Pro")
{
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  txtReportContent := frmTabIframe2.document.getElementsByName("ReportContent")[0]
  txtReportContent.style.fontFamily := font
  txtReportContent.style.fontSize := "12pt"
  return
}

$^!f:: ; 更改報告編輯區字體
  ChangeFont()
Return
#IfWinActive