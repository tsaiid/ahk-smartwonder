StatusOfUsRctWithoutImage() {
  wb := WBGet()
  frmMenu := wb.document.frames["frameMenu"]
  txtMenu := frmMenu.document.getElementById("txtMenu")
  frmWork := ComObj(9,ComObjQuery(wb.document.getElementsByName("frameWork")[0].contentWindow,"{332C4427-26CB-11D0-B483-00C04FD90119}","{332C4427-26CB-11D0-B483-00C04FD90119}"),1)

  If (txtMenu.innerText != "統計分析") {
    iconHome := frmMenu.document.getElementById("mId_Home")
    iconHome.click()
    FrameWait(frmWork)

    frmTabIframe2 := frmWork.document.frames["tabIframe2"]
    tabStatistics := FindTabByName(frmWork.document.getElementById("cmnTabs"), "統計評鑑")
    tabStatistics.click()
    FrameWait(frmTabIframe2)
  }

  spanMainMenu5 := frmMenu.document.getElementById("MainMenuBlock5Item")
  aRCTWithoutImage := spanMainMenu5.children[6]
  aRCTWithoutImage.click()

  ; Strang hack: cannot directly access iFrame, and getElementById fails.
  ;   the id and name strings are not the same ?!?!.
  FrameWait(frmWork)
  allInputs := frmWork.document.GetElementsByTagName("input")

  ;startDate := allInputs[5]
  startDate := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl03$txtValue")
  ;endDate := allInputs[7]
  endDate := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl05$txtValue")
  ;whatMachine := allInputs[9]
  whatMachine := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl07$txtValue")
  whatMachineDropdown := frmWork.document.getElementById("ReportViewerControl_ctl00_ctl07_ddDropDownButton")
  ;patientOrigin := allInputs[11]
  patientOrigin := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl09$txtValue")
  patientOriginDropdown := frmWork.document.getElementById("ReportViewerControl_ctl00_ctl09_ddDropDownButton")
  ;execDepartment := allInputs[13]
  execDepartment := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl11$txtValue")
  execDepartmentDropdown := frmWork.document.getElementById("ReportViewerControl_ctl00_ctl11_ddDropDownButton")
  ;viewReportBtn := allInputs[15]
  viewReportBtn := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl00")

  oneMonthAgoDate =
  EnvAdd, oneMonthAgoDate, -30, days
  FormatTime, todayDate, , yyyy/M/d
  FormatTime, oneMonthAgoDate, %oneMonthAgoDate%, yyyy/M/d
  startDate.value := oneMonthAgoDate
  endDate.value := todayDate

  ; Can not just set the input values. Need to trigger js by clicking
  whatMachineDropdown.click()
  machineUS := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl07$divDropDown$ctl13")
  machineUS.click()
  whatMachineDropdown.click()

  patientOriginDropdown.click()
  patientAll := frmWork.document.getElementById("ReportViewerControl$ctl00$ctl09$divDropDown$ctl00")
  patientAll.click()
  patientOriginDropdown.click()

  execDepartmentDropdown.click()
  departmentList := frmWork.document.getElementById("ReportViewerControl_ctl00_ctl11_divDropDown").children[0].children[0].children
  Loop % departmentList.Length {
    If (departmentList[A_Index - 1].innerText = "RAD") {
      departmentRad := departmentList[A_Index - 1].children[0].children[0].children[0]
      Break
    }
  }
  departmentRad.click()
  execDepartmentDropdown.click()

/*
  Loop % allInputs.Length {
    value := allInputs[A_Index].value
    the_id := allInputs[A_Index].id
    MsgBox, %A_Index%: %the_id%; %value%
  }
*/

  viewReportBtn.click()
}