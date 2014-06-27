; HotKey
;; for SmartWonder
#IfWinActive ahk_group SmartWonder
;;; Select Tabs
ClickReportEditing() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  ; 切換至編輯報告頁
  tabEditReport.click()
  ChangeFont()
}

ClickPreviousReports() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  ; 切換至歷史報告頁
  tabPrevReport.click()
}
#IfWinActive