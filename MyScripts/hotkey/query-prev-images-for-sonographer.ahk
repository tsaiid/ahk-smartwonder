; 幫助超音波放射師快速查詢過去影像

QueryPrevImagesForSonographer() {
  ; http://192.168.211.170:2000/first.aspx
  wbExam := WBGet()
  frameMain := ComObj(9,ComObjQuery(wbExam.document.getElementsByName("main")[0].contentWindow,"{332C4427-26CB-11D0-B483-00C04FD90119}","{332C4427-26CB-11D0-B483-00C04FD90119}"),1)
  pageTables := frameMain.document.getElementsByTagName("table")

  If (pageTables.Length > 1) {
    currentPatientInfoTable := pageTables[1]
    patientID := StrSplit(currentPatientInfoTable.children[0].children[1].children[2].innerText, ":")[2]

    If (WinExist("ahk_group SmartWonder")) {
      GroupActivate, SmartWonder
      wb := WBGet()
      frmMenu := wb.document.frames["frameMenu"]
      frmWork := wb.document.frames["frameWork"]

      txtMenu := frmMenu.document.getElementById("txtMenu")
      If (txtMenu.innerText != "影像作業") {
        iconHome := frmMenu.document.getElementById("mId_Home")
        iconHome.click()
        FrameWait(frmWork)
      }

      frmTabIframe2 := frmWork.document.frames["tabIframe2"]
      tabImageQuery := FindTabByName(frmWork.document.getElementById("cmnTabs"), "影像查詢")
      tabImageQuery.click()
      FrameWait(frmTabIframe2)

      clearBtn := frmTabIframe2.document.getElementsByName("Clear")[0]
      clearBtn.click()
      inputPtId := frmTabIframe2.document.getElementsByName("dcm00100020")[0]
      inputPtId.value := patientID
      inputMachine := frmTabIframe2.document.getElementsByName("dcm00080061")[0]
      inputMachine.value := "US"
      queryBtn := frmTabIframe2.document.getElementsByName("Query")[0]
      queryBtn.click()
    } Else {
      MsgBox, SmartWonder 未開啟或非獨立視窗
    }
  } Else {
    MsgBox, 無目前病患資料
  }
}
