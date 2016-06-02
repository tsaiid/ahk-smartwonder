; Gui related

GuiClose:
LLDGuiEscape:
  Gui, Destroy
Return

LLDButtonOK:
  Gui, Submit, NoHide  ; Save the input from the user to each control's associated variable.
  If (LLDFormRtLL = "" || LLDFormLtLL = "") {
    MsgBox, Empty value
    Return
  }

  RtLL := Round(LLDFormRtLL / 10, 1)
  LtLL := Round(LLDFormLtLL / 10, 1)
  delta := Round(Abs(RtLL - LtLL), 1)
  MeningfulLLD := (delta >= 1 ? "Evidence of leg length discrepancy" : "No evidence of leg length discrepancy")
  MyForm =
(
Triple film of lower extremities in standing AP projection :
  1. %MeningfulLLD%:
     Rt low limb measures %RtLL% cm
     Lt low limb measures %LtLL% cm
     LLD : %delta% cm
)
  Gui, Destroy
  WinActivate, ahk_id %hParentWnd%
  Paste(MyForm)
Return

;; for LLD form

LLDForm()
{
  global LLDFormRtLL, LLDFormLtLL
  Gui, LLD: New
  Gui, font, s12, Verdana
  Gui, LLD: Add, Text, x12 y22 w160 h20, Right Leg Length
  Gui, LLD: Add, Text, x12 y72 w160 h20, Left Leg Length
  Gui, LLD: Add, Edit, x162 y20 w80 h22 vLLDFormRtLL Number,
  Gui, LLD: Add, Edit, x162 y70 w80 h22 vLLDFormLtLL Number,
  Gui, LLD: Add, Text, x252 y22 w30 h20, mm
  Gui, LLD: Add, Text, x252 y72 w30 h20, mm
  Gui, LLD: Add, Button, x12 y120 w40 h30 gLLDButtonOK default, OK

  Gui, Show, x345 y288 h170 w327, LLD Helper
}

