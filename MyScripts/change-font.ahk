; HotKey
;; for SmartWonder
#IfWinActive, tedpc-
;;; Select Tabs
$^!f:: ; 更改報告編輯區字體
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  txtReportContent := frmTabIframe2.document.getElementsByName("ReportContent")[0]
  txtReportContent.style.fontFamily := "Source Code Pro"
  txtReportContent.style.fontSize := "12pt"
return
#IfWinActive