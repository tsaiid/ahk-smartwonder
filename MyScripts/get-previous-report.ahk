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

$^0::
  wb := IEGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  ;; get current exam name
  tmpStr := frmTabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  currExamName := splittedTmpStr2

  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  ; 切換至歷史報告頁
  tabPrevReport.click()

  Loop    ;optional check to wait for the page to completely load
    Sleep, 100
  Until (frmTabIframe2.document.readyState = "complete")

  ; 檢查是否有歷史報告
  prevReportLists := frmTabIframe2.document.getElementById("lstBdyQuery")
  isNoPrevReport := (prevReportLists.children.length = 0)
  tdMsgMore := frmTabIframe2.document.frames["History1"].document.getElementById("tdMsgMore")
  If isNoPrevReport ; 完全沒有歷史報告
    MsgBox % tdMsgMore.innerText
  Else ; 有一筆以上的歷史報告
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
          getPrevReport := A_Index
          break
        }
      }

      If (getPrevReport > 0) {  ; 有找到相關的報告
        latestRelatedReport := prevReportLists.children[getPrevReport].children[1]
        latestRelatedReport.click() ; 點最近報告、開影像

        frmPrevReport := frmWork.document.frames["tabIframe2"].document.frames["History3"]

        Loop    ;optional check to wait for the page to completely load
          Sleep, 100
        Until (frmPrevReport.document.readyState = "complete")

        btnCopyReport := frmPrevReport.document.getElementsByName("copyReport")[0]
        btnCopyReport.click() ; 複製報告
      } Else
        MsgBox % "AHK-SmartWonder: No related report found."
    }
  }

  ; 切回報告編輯頁
  tabEditReport.click()
return

#IfWinActive
