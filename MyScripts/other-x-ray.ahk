; Other plain films
:O:cnic::The condition shows no obvious change as compared with previous study.
:O:nic0::no obvious interval change.
:O:nip0::no obvious improvement.
:O:pc0::progressive change.
:O:rc0::regressive change.
:O:cc::Suggest clinical correlation.
:O:cc0::clinical correlation
:O:fe::Suggest further evaluation.
:O:fu::Suggest follow-up.
:O:ccfu::Suggest clinical correlation and follow-up.
:O:fufe::Suggest follow-up or further evaluation.
:O:nbd::Nature to be determined.

SplitDate(dateStr)
{
  Return RegExReplace(dateStr, "(\d{4})(\d{2})(\d{2})", "$1-$2-$3")
}

StringWithPrevExamDate(strTemplate)
{
  global prevExamDate

  output := strTemplate
  If (StrLen(prevExamDate)) {
    output .= " on " . splitDate(prevExamDate)
  }
  output .= "."

  Paste(output, 0)
}

:O:nic::
  StringWithPrevExamDate("No obvious interval change as compared with previous study")
Return

:O:nip::
  StringWithPrevExamDate("No obvious improvement as compared with previous study")
Return

:O:pc::
  StringWithPrevExamDate("Progressive change as compared with previous study")
Return

:O:rc::
  StringWithPrevExamDate("Regressive change as compared with previous study")
Return
