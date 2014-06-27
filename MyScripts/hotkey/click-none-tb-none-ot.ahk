; HotKey
;; for SmartWonder
;; As Chief Wu's request, for clicking the radio button of TB(-)Ot(-)
#IfWinActive ahk_group SmartWonder

; Click TB(-)Ot(-)
ClickNoneTBNoneOt() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  FlagTBNone := frmTabIframe2.document.getElementById("FlagTBNone")
  If (FlagTBNone) {
    FlagTBNone.click()
  }
}

#IfWinActive
