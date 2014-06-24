; Date Lib
SplitDate(dateStr) {
  Return RegExReplace(dateStr, "(\d{4})(\d{2})(\d{2})", "$1-$2-$3")
}

StringWithPrevExamDate(strTemplate) {
  global prevExamDate

  output := strTemplate
  If (StrLen(prevExamDate)) {
    output .= " on " . splitDate(prevExamDate)
  }
  output .= "."

  Paste(output, 0)
}