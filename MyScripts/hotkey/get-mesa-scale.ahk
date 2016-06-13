; get Mesa scale for Agatston score

GetMesaScale(){
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  ;; Check Age
  PatNameGender := frmTabIframe2.document.getElementById("tabPatient").children[0].children[0].children[0].children[0].innerText
  PatAgeRaw := frmTabIframe2.document.getElementById("PatInfo_2").innerText
  StringSplit, PatNameGenderArr, PatNameGender, /
  PatGender := (PatNameGenderArr2 = "M" ? 1 : 0)
  PatAge := RegExReplace(PatAgeRaw, "^\s*(\d+).*$", "$1") + 0

  _divTreeCom := frmTabIframe2.document.getElementById("divTemplateTree")
  If (!_divTreeCom) { ; not a structured report
    ;MsgBox, Not a structured report!
    Return
  }

  agatScoreCom := _divTreeCom.children[1].children[1].children[1].children[0].children[1]
  _mesaScaleCom := _divTreeCom.children[1].children[1].children[1].children[2]
  mesaScaleOutRadCom := _mesaScaleCom.children[0].children[0]
  mesaScaleLess25RadCom := _mesaScaleCom.children[1].children[0]
  mesaScaleMore25RadCom := _mesaScaleCom.children[2].children[0]
  mesaScaleMore25TextCom := _mesaScaleCom.children[2].children[2]

  agatScore := RegExReplace(agatScoreCom.innerText, "\D") + 0
  If (StrLen(agatScore) < 1) {
    agatScore := 0
  }

  If (PatAge < 45 or PatAge > 84 or agatScore > 10000) {
    MsgBox, Out of range!
    mesaScaleOutRadCom.checked := true
    Return
  }

  ;; Open An IE window and navigate
  wbMesa := ComObjCreate("InternetExplorer.Application")
  wbMesa.Visible := True
  ;;; Calculate window position and size, according to DPIscale
  screenScaleRatio := A_ScreenDPI / 96
  mesaIeWidth := Ceil(650 * screenScaleRatio)
  mesaIeHeight := Ceil(1000 * screenScaleRatio)
  mesaIeX := (A_ScreenWidth > mesaIeWidth ? Ceil(A_ScreenWidth - mesaIeWidth) : 0)
  mesaIeY := (A_ScreenHeight > mesaIeHeight ? Ceil(A_ScreenHeight - mesaIeHeight) : 0)
  WinMove, % "ahk_id " wbMesa.hwnd, , mesaIeX, mesaIeY, mesaIeWidth, mesaIeHeight
  wbMesa.Navigate("https://www.mesa-nhlbi.org/Calcium/input.aspx")

  FrameWait(wbMesa)

  wbMesa.Document.All.Age.Value := PatAge
  wbMesa.Document.All.gender.Value := PatGender
  wbMesa.Document.All.Race.Value := "1"   ; for chinese
  wbMesa.Document.All.Score.Value := agatScore

  wbMesa.Document.All.Calculate.Click()

  FrameWait(wbMesa)

  NZCalScore := wbMesa.document.getElementById("Label10").innerText
  MesaPerc := wbMesa.document.getElementById("percLabel").innerText + 0

  If (MesaPerc < 25) {
    mesaScaleLess25RadCom.checked := true
  } Else {
    mesaScaleMore25RadCom.checked := true
    mesaScaleMore25TextCom.innerText := MesaPerc
  }

  ;MsgBox % MesaPerc

  ;wb.quit
}
