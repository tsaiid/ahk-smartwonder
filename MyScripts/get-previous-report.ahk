; HotKey
;; for SmartWonder
#IfWinActive, tedpc-

IEGet(Name="")        ;Retrieve pointer to existing IE window/tab
{
    IfEqual, Name,, WinGetTitle, Name, ahk_class IEFrame
        Name := ( Name="New Tab - Windows Internet Explorer" ) ? "about:Tabs"
        : RegExReplace( Name, " - (Windows|Microsoft) Internet Explorer" )
    For wb in ComObjCreate( "Shell.Application" ).Windows
        If ( wb.LocationName = Name ) && InStr( wb.FullName, "iexplore.exe" )
            Return wb
} ;written by Jethrow

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

$^0::
  wb := IEGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  ; 切換至歷史報告頁
  tabPrevReport.click()

  Loop    ;optional check to wait for the page to completely load
    Sleep, 100
  Until (frmTabIframe2.document && frmTabIframe2.document.readyState = "complete")

  ;; get current exam date and time
  frmHistory2 := frmTabIframe2.frames["History2"]

  Loop    ;optional check to wait for the page to completely load
    Sleep, 100
  Until (frmHistory2.document && frmHistory2.document.readyState = "complete")

  currExamName := frmHistory2.document.getElementById("BodyPart").innerText
  currExamDate := frmHistory2.document.getElementById("StudyDate").innerText
  currExamTime := frmHistory2.document.getElementById("StudyTime").innerText

  ; 檢查是否有歷史報告
  prevReportLists := frmTabIframe2.document.getElementById("lstBdyQuery")
  isNoPrevReport := (prevReportLists.children.length = 0)
  tdMsgMore := frmTabIframe2.document.frames["History1"].document.getElementById("tdMsgMore")
  If !isNoPrevReport ; 有一筆以上的歷史報告
  {
    ; 參考用的 pattern
    patternCXR := "i)chest (pa|ap)"
    patternKUB := "i)kub"
    ; 分析目前為何種檢查
    If RegExMatch(currExamName, patternCXR)
      currPattern := patternCXR
    Else If RegExMatch(currExamName, patternKUB)
      currPattern := patternKUB
    Else
      currPattern := ""

    If (currPattern = "")
      MsgBox % "AHK-SmartWonder: Currently, only CXR and KUB are supported."
    Else { ; 找到最近相關報告
      prevReportListsLength := prevReportLists.children.length
      getPrevReport := 0
      Loop %prevReportListsLength% {
        If RegExMatch(prevReportLists.children[A_Index].children[7].innerText, currPattern) {
          ; 必須要是比當前報告早的報告
          prevExamDate := prevReportLists.children[A_Index].children[4].innerText
          prevExamTime := prevReportLists.children[A_Index].children[5].innerText

          ;; convert string to int for date and time
          StringReplace prevExamDate, prevExamDate, -,, All
          StringReplace currExamDate, currExamDate, -,, All
          prevExamTime := prevExamTime + 0
          currExamTime := currExamTime + 0
          If (currExamDate > prevExamDate || (currExamDate = prevExamDate && currExamTime > prevExamTime)) {
            getPrevReport := A_Index
            break
          }
        }
      }

      If (getPrevReport > 0) {  ; 有找到相關的報告
        latestRelatedReport := prevReportLists.children[getPrevReport].children[1]
        latestRelatedReport.click() ; 點最近報告、開影像

        frmPrevReport := frmTabIframe2.document.frames["History3"]

        Loop    ;optional check to wait for the page to completely load
          Sleep, 100
        Until (frmPrevReport.document && frmPrevReport.document.readyState = "complete")

        btnCopyReport := frmPrevReport.document.getElementsByName("copyReport")[0]
        btnCopyReport.click() ; 複製報告
      }
    }
  }

  ; 切回報告編輯頁
  tabEditReport.click()
  If isNoPrevReport ; 完全沒有歷史報告
    MsgBox % tdMsgMore.innerText
  If (getPrevReport = 0) ; 有找到相關的報告，顯示訊息
    MsgBox % "AHK-SmartWonder: No related report found."
  ;MsgBox % tabPrevReport.id
return

#IfWinActive
