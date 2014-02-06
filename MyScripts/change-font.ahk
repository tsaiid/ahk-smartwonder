; HotKey
;; for SmartWonder
#IfWinActive, tedpc-
;;; Select Tabs
$^!f:: ; 更改報告編輯區字體
  wb := IEGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  txtReportContent := frmTabIframe2.document.getElementsByName("ReportContent")[0]
  txtReportContent.style.fontFamily := "Source Code Pro"
  txtReportContent.style.fontSize := "11pt"
return
#IfWinActive