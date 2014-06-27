; Insert PatID, AccNo, PatGender, PatAge, ExamDate for Chief Lai
; Only work in IE.

#IfWinActive ahk_class IEFrame
InsertPatientExamInfo(){
  SmartWonderWinID := WinExist("ahk_group SmartWonder")
  wb := WBGet("ahk_id" SmartWonderWinID)
  If (wb) {
    AccNo := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementsByName("OldAccNo")[0].value
    PatID := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementsByName("PatID")[0].value
    PatNameGender := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("tabPatient").children[0].children[0].children[0].children[0].innerText
    PatAgeRaw := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("PatInfo_2").innerText
    ExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("orderTemplate_rptFlowProcess").children[0].children[3].children[1].innerText
    StringSplit, PatNameGenderArr, PatNameGender, /
    PatGender := PatNameGenderArr2
    PatAge := RegExReplace(PatAgeRaw, "0([\S]+)\s*", "$1")
    LaiStr = Hx: %PatID%, Ac: %AccNo%, %PatGender%/%PatAge%, %ExamDate%
    Paste(LaiStr, 0)
  }
}
#IfWinActive