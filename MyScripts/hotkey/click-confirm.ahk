; HotKey
;; Renumbering the selected text
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
ClickConfirm(){
  wb := WBGet()
  frameWork := wb.document.frames["frameWork"]
  firstTab := frameWork.document.getElementById("tab000").innerText

  If (firstTab = "報告編輯") {
    /*
    If (IsFunc("CheckSmartCardPresence")) {
      isSCardPresent := Func("CheckSmartCardPresence").Call()
    } Else {
      isSCardPresent := 1
    }
    */
    isSCardPresent := IsFunc("CheckSmartCardPresence") ? Func("CheckSmartCardPresence").Call() : 1
    ;MsgBox % isSCardPresent
    tabIframe2 := frameWork.document.frames["tabIframe2"]
    btnReport := tabIframe2.document.getElementsByName(isSCardPresent ? "ConfirmReport" : "SavePreReport")[0]
    btnReport.click()
  } Else If (firstTab = "檢查步驟編輯") {
    frameProcess := wb.document.frames["frameProcess"]
    Left_4 := frameProcess.document.getElementById("Left_4")
    Left_4.click()
    ;MsgBox % Left_4.value
  }
}
#IfWinActive
