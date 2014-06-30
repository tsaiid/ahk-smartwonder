; HotKey
;; Renumbering the selected text
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
ClickConfirm(){
  wb := WBGet()
  frameWork := wb.document.frames["frameWork"]
  firstTab := frameWork.document.getElementById("tab000").innerText

  If (firstTab = "報告編輯") {
    tabIframe2 := frameWork.document.frames["tabIframe2"]
    ConfirmReport := tabIframe2.document.getElementsByName("ConfirmReport")[0]
    ConfirmReport.click()
    ;MsgBox % ConfirmReport.value
  } Else If (firstTab = "檢查步驟編輯") {
    frameProcess := wb.document.frames["frameProcess"]
    Left_4 := frameProcess.document.getElementById("Left_4")
    Left_4.click()
    ;MsgBox % Left_4.value
  }
}
#IfWinActive
