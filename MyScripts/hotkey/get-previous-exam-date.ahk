; Hotkey: get previous exam date
;; for SmartWonder
#IfWinActive ahk_group SmartWonder

GetPrevExamDate() {
  global prevExamDate
  global currAccNo

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  If (currAccNo != AccNo || !StrLen(prevExamDate)) {
    GetPreviousReport(false, false)
  }

  Return SplitDate(prevExamDate)
}

InsertPrevExamDate(){
  global currAccNo

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  prevExamDate := GetPrevExamDate()
  FrameWait(tabIframe2) ; 要等如果是從歷史報告頁面切回來的時間

  If (currAccNo = AccNo && StrLen(prevExamDate)) {
    Paste(prevExamDate)
  }
}

#IfWinActive