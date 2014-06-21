; Other plain films
::cnic::The condition shows no obvious change as compared with previous study.
::nic0::no obvious interval change.
::nip0::no obvious improvement.
::pc0::progressive change.
::rc0::regressive change.
::cc::Suggest clinical correlation.
::cc0::clinical correlation
::fe::Suggest further evaluation.
::fe0::further evaluation
::fu::Suggest follow-up.
::fu0::follow-up.
::ccfu::Suggest clinical correlation and follow-up.
::fufe::Suggest follow-up or further evaluation.
::nbd::Nature to be determined.

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

::nic::
  StringWithPrevExamDate("No obvious interval change as compared with previous study")
Return

::nip::
  StringWithPrevExamDate("No obvious improvement as compared with previous study")
Return

::pc::
  StringWithPrevExamDate("Progressive change as compared with previous study")
Return

::rc::
  StringWithPrevExamDate("Regressive change as compared with previous study")
Return
