; Date Lib
SplitDate(dateStr) {
  Return RegExReplace(dateStr, "(\d{4})(\d{2})(\d{2})", "$1-$2-$3")
}

StringWithPrevExamDate(strTemplate) {
  global prevExamDate
  global currExamDate
  global currAccNo

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  output := strTemplate
  If (currAccNo = AccNo && StrLen(prevExamDate)) {
    output .= " on " . splitDate(prevExamDate)
    If (currExamDate == prevExamDate) {
      output .= " earlier"
    }
  }
  output .= "."

  Paste(output, 0)
}