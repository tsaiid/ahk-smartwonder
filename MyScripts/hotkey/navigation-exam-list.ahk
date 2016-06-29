; Navigation in the exam list

GoNextExam() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]

  ; only work in 報告編輯 tab
  tabFirst := Trim(frmWork.document.getElementById("tabCaption0").children[1].innerText)
  If (tabFirst != "報告編輯") {
    Return
  }

  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  currAccNo := frmTabIframe2.document.getElementsByName("OldAccNo")[0].value

  frameWrkList := wb.document.frames["frameWrkList"]
  listBody := frameWrkList.document.getElementById("lstBdyfromWorklist")
  listBodyLength := listBody ? listBody.children.length : 0

  nextExamIndex := -1

  If (listBodyLength > 0) {
    Loop %listBodyLength% {
      lstAccNo := listBody.children[A_Index - 1].children[3].children[1].innerText
      If (lstAccNo = currAccNo) {
          nextExamIndex := A_Index
          Break
      }
    }
  }

  If (nextExamIndex > -1 && nextExamIndex < listBodyLength) {
    listBody.children[nextExamIndex].click()
  }
}

GoPrevExam() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]

  ; only work in 報告編輯 tab
  tabFirst := Trim(frmWork.document.getElementById("tabCaption0").children[1].innerText)
  If (tabFirst != "報告編輯") {
    Return
  }

  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  currAccNo := frmTabIframe2.document.getElementsByName("OldAccNo")[0].value

  frameWrkList := wb.document.frames["frameWrkList"]
  listBody := frameWrkList.document.getElementById("lstBdyfromWorklist")
  listBodyLength := listBody ? listBody.children.length : 0

  prevExamIndex := -1

  If (listBodyLength > 0) {
    Loop %listBodyLength% {
      lstAccNo := listBody.children[A_Index - 1].children[3].children[1].innerText
      If (lstAccNo = currAccNo) {
          prevExamIndex := A_Index - 2
          Break
      }
    }
  }

  If (prevExamIndex > -1 && prevExamIndex < listBodyLength) {
    listBody.children[prevExamIndex].click()
  }
}

ClickSamePatientExams() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]

  ; only work in 報告編輯 tab
  tabFirst := Trim(frmWork.document.getElementById("tabCaption0").children[1].innerText)
  If (tabFirst != "報告編輯") {
    Return
  }

  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  currPatId := frmTabIframe2.document.getElementsByName("PatID")[0].value

  frameWrkList := wb.document.frames["frameWrkList"]
  listBody := frameWrkList.document.getElementById("lstBdyfromWorklist")
  listBodyLength := listBody ? listBody.children.length : 0

  samePatientExams := Object()

  If (listBodyLength > 0) {
    Loop %listBodyLength% {
      lstPatId := listBody.children[A_Index - 1].children[2].innerText
      If (lstPatId = currPatId) {
          samePatientExams.Push(A_Index - 1)
      }
    }
  }

  Loop % samePatientExams.Length() {
    If (A_Index = 1 && samePatientExams.Length() > 1) {
      Continue
    }
    listBody.children[samePatientExams[A_Index]].click()
  }

  ; Go back to first exam
  If (samePatientExams.Length() > 1) {
    listBody.children[samePatientExams[1]].click()
  }
}
