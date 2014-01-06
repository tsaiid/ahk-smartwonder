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
  ;currExam := splitted[2]

  ;; get previous exam name
  ;prevExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[4].innerText
  ;prevExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[5].innerText
  ;prevExamName := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[7].innerText

  ;; determine lstBdyQuery Type
  ;; if CtrlId == lstBdyQuery, is a valid exam.
  prevExamType := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].getAttribute("CtrlId")

  MsgBox, %prevExamType%
return

$^0::
  wb := IEGet()
  frmWork := wb.document.frames["frameWork"]
  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  ; 切換至歷史報告頁
  tabPrevReport.click()

  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  Loop    ;optional check to wait for the page to completely load
    Sleep,100
  Until (frmTabIframe2.document.readyState = "complete")
  ; 檢查是否有歷史報告
  prevReportLists := frmTabIframe2.document.getElementById("lstBdyQuery")
  isNoPrevReport := (prevReportLists.children.length = 0)
  tdMsgMore := frmTabIframe2.document.frames["History1"].document.getElementById("tdMsgMore")
  If isNoPrevReport {
    MsgBox % tdMsgMore.innerText
  } Else {
    latestReport := prevReportLists.children[1].children[1]
    ; 點最近報告、開影像
    latestReport.click()

    frmPrevReport := frmWork.document.frames["tabIframe2"].document.frames["History3"]
    Loop    ;optional check to wait for the page to completely load
      Sleep,100
    Until (frmPrevReport.document.readyState = "complete")
    btnCopyReport := frmPrevReport.document.getElementsByName("copyReport")[0]
    ; 複製報告
    btnCopyReport.click()
  }

  ; 切回報告編輯頁
  tabEditReport.click()
  ;MsgBox % tabPrevReport.id
return

#IfWinActive
