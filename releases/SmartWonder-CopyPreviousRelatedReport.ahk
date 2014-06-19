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

FrameWait(FrameCom) {
  Loop {
    Try {
      Loop    ;if readyState = complete
        Sleep, 100
      Until (FrameCom.document.readyState = "complete")

      Break
    }
    Catch e {
      ;MsgBox, An exception was thrown!`nSpecifically: %e%
      Continue
    }
  }

  Return True
}

GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

; Global Variables
prevExamDate := ""

#IfWinActive ahk_group SmartWonder

$^0::
  ; use global variables to store previous exam date
  global prevExamDate

  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  ; 在切換至歷史報告頁之前先確認有無支援此類報告
  ;; get current exam name
  tmpStr := frmTabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  currExamName := splittedTmpStr2

  ;; 參考用的 pattern
  patterns := {   CXR:        "i)chest (pa|ap|& kub)"
                , KUB:        "i)kub"
                , ToeRt:      "Toe\(s\) RT"
                , ToeLt:      "Toe\(s\) LT"
                , FootRt:     "Foot RT"
                , FootLt:     "Foot LT"
                , AnkleRt:    "Ankle RT"
                , AnkleLt:    "Ankle LT"
                , KneeRt:     "Knee RT"
                , KneeLt:     "Knee LT"
                , LowerLegRt: "Lower leg RT including 2 joints"
                , LowerLegLt: "Lower leg LT including 2 joints"
                , FemurRt:    "Femur, RT"
                , FemurLt:    "Femur, LT"
                , FingerRt:   "Finger\(s\) RT"
                , FingerLt:   "Finger\(s\) LT"
                , WristRt:    "Wrist RT"
                , WristLt:    "Wrist LT"
                , ForearmRt:  "Forearm RT"
                , ForearmLt:  "Forearm LT"
                , ElbowRt:    "Elbow RT"
                , ElbowLt:    "Elbow LT"
                , HumerusRt:  "Humerus RT"
                , HumerusLt:  "Humerus LT"
                , ClavicleRt: "Clavicle RT"
                , ClavicleLt: "Clavicle LT"
                , ShoulderRt: "Shoulder RT"
                , ShoulderLt: "Shoulder LT"
                , THRRtHip:   "THR \+ RT hip"
                , THRLtHip:   "THR \+ LT hip"
                , THRAP:   "THR, AP view"
                , PelvisAP:   "Pelvis AP view"
                , PelvisInlet:  "Pelvis inlet view"
                , PelvisOutlet: "Pelvis outlet view"  }

  ;; 分析目前為何種檢查
  currPattern := ""
  For type, pattern in patterns {
    If RegExMatch(currExamName, pattern) {
      currPattern := pattern
      Break
    }
  }

  If (currPattern = "") {
    MsgBox % "AHK-SmartWonder: Currently, only CXR, KUB, and some Bone plain films are supported."
    Return
  }

  ; 切換至歷史報告頁
  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  tabPrevReport.click()
  FrameWait(frmTabIframe2)

  ;; get current exam date and time
  frmHistory2 := frmTabIframe2.frames["History2"]
  FrameWait(frmHistory2)

  ;currExamName := frmHistory2.document.getElementById("BodyPart").innerText
  currExamDate := frmHistory2.document.getElementById("StudyDate").innerText
  currExamTime := frmHistory2.document.getElementById("StudyTime").innerText

  ;; convert string to int for date and time
  StringReplace currExamDate, currExamDate, -,, All
  currExamTime := currExamTime + 0

  ; 檢查是否有歷史報告
  prevReportLists := frmTabIframe2.document.getElementById("lstBdyQuery")
  isNoPrevReport := (prevReportLists.children.length = 0)

  ; get no prev report message.
  frmHistory1 := frmTabIframe2.frames["History1"]
  FrameWait(frmHistory1)
  tdMsgMore := frmHistory1.document.getElementById("tdMsgMore")

  If !isNoPrevReport ; 有一筆以上的歷史報告
  {
    prevReportListsLength := prevReportLists.children.length
    getPrevReport := 0
    relatedReportCount := 0
    Loop %prevReportListsLength% {
      If RegExMatch(prevReportLists.children[A_Index].children[7].innerText, currPattern) {
        ; 先找出所有相關報告
        ;; 排除比目前日期晚的
        prevExamDate := prevReportLists.children[A_Index].children[4].innerText
        prevExamTime := prevReportLists.children[A_Index].children[5].innerText
        ;; convert string to int for date and time
        prevExamTime := prevExamTime + 0

        If (prevExamDate <= currExamDate) {
          If (relatedReportCount > 0) { ; 裡面已經有資料
            index := arrayRelatedReportIndex%relatedReportCount%
            tmpExamDate := prevReportLists.children[index].children[4].innerText
            If (tmpExamDate = prevExamDate) { ; 只要抓同一天的資料就可以了
              relatedReportCount += 1
              arrayRelatedReportIndex%relatedReportCount% := A_Index + 0  ; convert to integer
            }
          } Else {
            If ((prevExamDate = currExamDate && prevExamTime < currExamTime) || prevExamDate < currExamDate) {
              relatedReportCount += 1
              arrayRelatedReportIndex%relatedReportCount% := A_Index + 0  ; convert to integer
            }
          }
        }

        ;; 先抓 5 比出來就好，理論上一天應該不會超過五次相同的檢查
        If (relatedReportCount >= 5)
          Break
      }
    }

    Loop %relatedReportCount% {
      examIndex := arrayRelatedReportIndex%A_Index%
      prevExamDate := prevReportLists.children[examIndex].children[4].innerText
      prevExamTime := prevReportLists.children[examIndex].children[5].innerText

      ;; convert string to int for date and time
      prevExamTime := prevExamTime + 0

      If (currExamDate > prevExamDate) {
        If (getPrevReport = 0) {
          getPrevReport := examIndex
          tmpExamTime := prevExamTime
        } Else {
          If (prevExamTime > tmpExamTime) {
            getPrevReport := examIndex
          }
        }
      } Else If (currExamDate = prevExamDate) {
        If (getPrevReport = 0) {
          getPrevReport := examIndex
          tmpTimeDelta := currExamTime - prevExamTime
        } Else {
          tmp2TimeDelta := currExamTime - prevExamTime
          If (tmp2TimeDelta > 0 && tmp2TimeDelta < tmpTimeDelta) {
            getPrevReport := examIndex
            tmpTimeDelta := tmp2TimeDelta
          }
        }
      }
    }

    If (getPrevReport > 0) {  ; 有找到相關的報告
      ; If you'd like to load the related image, uncomment next line and comment the second next line.
      ;latestRelatedReport := prevReportLists.children[getPrevReport].children[1]
      latestRelatedReport := prevReportLists.children[getPrevReport].children[3]
      latestRelatedReport.click() ; 點最近報告

      frmPrevReport := frmTabIframe2.document.frames["History3"]

      FrameWait(frmPrevReport)

      btnCopyReport := frmPrevReport.document.getElementsByName("copyReport")[0]
      btnCopyReport.click() ; 複製報告
    }
  }

  ; 切回報告編輯頁
  tabEditReport.click()
  If isNoPrevReport ; 完全沒有歷史報告
    MsgBox % tdMsgMore.innerText
  If (getPrevReport = 0) ; 沒有找到相關的報告，顯示訊息
    MsgBox % "AHK-SmartWonder: No related report found."
Return

#IfWinActive
