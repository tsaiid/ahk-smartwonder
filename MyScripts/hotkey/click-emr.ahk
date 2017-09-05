; HotKey
;; for SmartWonder
;; Click EMR Query Link
#IfWinActive ahk_group SmartWonder

ClickEMR() {
  wb := WBGet()
  frmMenu := wb.document.frames["frameMenu"]
  menuContent := frmMenu.document.getElementById("menuContent")
  menuContentLength := menuContent.children.length

  Loop %menuContentLength% {
    if (menuContent.children[A_Index - 1].innerText = "病摘查詢系統") {
      menuContent.children[A_Index - 1].children[0].children[0].children[0].children[0].click()
    }
  }
}
Return

#IfWinActive
