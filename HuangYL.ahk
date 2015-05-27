; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

#IfWinActive ahk_group SmartWonder
WBGet(WinTitle="ahk_class IEFrame", Svr#=1) {               ;// based on ComObjQuery docs
  static msg := DllCall("RegisterWindowMessage", "str", "WM_HTML_GETOBJECT")
       , IID := "{0002DF05-0000-0000-C000-000000000046}"   ;// IID_IWebBrowserApp
;//    , IID := "{332C4427-26CB-11D0-B483-00C04FD90119}"   ;// IID_IHTMLWindow2
  SendMessage msg, 0, 0, Internet Explorer_Server%Svr#%, %WinTitle%
  if (ErrorLevel != "FAIL") {
    lResult:=ErrorLevel, VarSetCapacity(GUID,16,0)
    if DllCall("ole32\CLSIDFromString", "wstr","{332C4425-26CB-11D0-B483-00C04FD90119}", "ptr",&GUID) >= 0 {
       DllCall("oleacc\ObjectFromLresult", "ptr",lResult, "ptr",&GUID, "ptr",0, "ptr*",pdoc)
       return ComObj(9,ComObjQuery(pdoc,IID,IID),1), ObjRelease(pdoc)
    }
  }
}

Paste(text) {
  ClipSaved := ClipboardAll
  Clipboard := text
  Send ^v
  Sleep 300 ; Probably more than enough. Depends on the system.
  Clipboard := ClipSaved
}

$^3::
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  ;; get current exam name
  tmpStr := frmTabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  currExamName := splittedTmpStr2

  Paste(currExamName)
Return

$^4::
  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]

  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value
  OrderId = OrderDiag_%accNo%
  OrderDiag := tabIframe2.document.getElementById(OrderId).value

  OrderPurpose := RegExReplace(OrderDiag, ".*(Purpose :.*)$", "$1")
  OrderHxData := RegExReplace(OrderPurpose, "(.*)(History &(amp;)? Data.*)$", "$1`n$2")

  Paste(OrderHxData)

Return

#IfWinActive
