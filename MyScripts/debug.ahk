; for debug
$^9::
  wb := IEGet()
  ;; get current exam name
  ;str := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  ;RegExMatch(str, "(.+) : (.+)", splitted)
  ;currExam := splitted2

  ;; get current exam date and time
  currExamName := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("BodyPart").innerText
  currExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("StudyDate").innerText
  currExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("StudyTime").innerText

  ;; get previous exam name
  ;prevExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[4].innerText
  prevExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[5].innerText
  ;prevExamName := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[7].innerText

  ;; determine lstBdyQuery Type
  ;; if CtrlId == lstBdyQuery, is a valid exam.
  ;prevExamType := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].getAttribute("CtrlId")

  ;; loop to search prevExamName
  ;prevReportLists := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery")
  ;prevReportListsLength := prevReportLists.children.length
  ;getPrevReport := 0
  ;pat := "i)chest (pa|ap)"
  ;Loop %prevReportListsLength% {
  ;  if RegExMatch(prevReportLists.children[A_Index].children[7].innerText, pat) {
  ;    getPrevReport := A_Index
  ;    break
  ;  }
  ;}

  prevExamTime := prevExamTime + 0
  currExamTime := currExamTime + 0
  if (prevExamTime > currExamTime)
    str := ">"
  else
    str := "<"

  StringReplace currExamDate, currExamDate, -,, All
  MsgBox, %currExamDate%
return