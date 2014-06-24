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

; need other string and date lib
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
