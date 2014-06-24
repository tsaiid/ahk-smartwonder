; HotKey
;; for SmartWonder
#IfWinActive ahk_group SmartWonder

GetPreviousReportWithImages(CopyReport=true, LoadImages=false, TotalRecentImages=2, LoadFarImage=true) {
  ; use global variables to store previous exam date
  global prevExamDate
  global currAccNo

  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  ; 把目前的 acc_no 存起來做為比對用
  currAccNo := frmTabIframe2.document.getElementsByName("OldAccNo")[0].value

  ; 在切換至歷史報告頁之前先確認有無支援此類報告
  ;; get current exam name
  tmpStr := frmTabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  currExamName := splittedTmpStr2

  ;; 參考用的 pattern, 目前暫時只支援 CXR
  patterns := {   CXR:          "i)chest (pa|ap|& kub)" }

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

  currExamDateTime := (currExamDate . "_" . currExamTime) + 0

  ; 檢查是否有歷史報告
  prevReportLists := frmTabIframe2.document.getElementById("lstBdyQuery")
  isNoPrevReport := (prevReportLists.children.length = 0)

  ; get no prev report message.
  frmHistory1 := frmTabIframe2.frames["History1"]
  FrameWait(frmHistory1)
  tdMsgMore := frmHistory1.document.getElementById("tdMsgMore")

  ; 有一筆以上的歷史報告
  If !isNoPrevReport {
    prevReportListsLength := prevReportLists.children.length
    getPrevReport := 0
    relatedReportCount := 0
    prevReportHash := {}
    prevReportArray := []
    Loop %prevReportListsLength% {
      If RegExMatch(prevReportLists.children[A_Index].children[7].innerText, currPattern) {
        ; 先找出所有相關報告
        ;; 排除比目前日期晚的
        prevExamDate := prevReportLists.children[A_Index].children[4].innerText
        prevExamTime := prevReportLists.children[A_Index].children[5].innerText
        ;; convert string to int for date and time
        ;prevExamTime := prevExamTime + 0
        prevExamDateTime := (prevExamDate . "_" . prevExamTime)

        prevReportHash[prevExamDateTime] := A_Index
        relatedReportCount += 1
      }
    }

    farRelatedReportIndex := 0
    relatedReportCountIndex := relatedReportCount
    For key, value in prevReportHash {
      prevReportArray[relatedReportCountIndex--] := value

      ; 取得古早影像, 暫時定義 > 3 月前
      deltaExamDate := currExamDate
      theExamDate := StrSplit(key, "_")[1]
      EnvSub, deltaExamDate, %theExamDate%, Days
      If (deltaExamDate > 90 && relatedReportCountIndex >= TotalRecentImages) {
        farRelatedReportIndex := value
      }
    }

    ; 有找到相關報告
    If (relatedReportCount > 0) {
      ; update global var prevExamDate
      prevExamDate := prevReportLists.children[prevReportArray[1]].children[4].innerText

      ; copy the latest report
      latestRelatedReport := prevReportLists.children[prevReportArray[1]].children[(LoadImages? 1 : 3)]
      latestRelatedReport.click() ; 點最近報告、開影像

      frmPrevReport := frmTabIframe2.document.frames["History3"]
      FrameWait(frmPrevReport)

      btnCopyReport := frmPrevReport.document.getElementsByName("copyReport")[0]
      btnCopyReport.click() ; 複製報告

      ; load image other than latest
      If (LoadImages && relatedReportCount > 1) {
        Loop %TotalRecentImages% {
          If (A_Index > 1 && A_Index <= relatedReportCount) {
            theRelatedReport := prevReportLists.children[prevReportArray[A_Index]].children[1]
            theRelatedReport.click()
          }
        }

        If (LoadFarImage && farRelatedReportIndex > 0) {
          farRelatedReport := prevReportLists.children[farRelatedReportIndex].children[1]
          farRelatedReport.click()
        }
      }
    }
  }

  ; 切回報告編輯頁
  tabEditReport.click()
  If isNoPrevReport ; 完全沒有歷史報告
    MsgBox % tdMsgMore.innerText
  If (relatedReportCount = 0) ; 沒有找到相關的報告，顯示訊息
    MsgBox % "AHK-SmartWonder: No related report found."
  Else If (farRelatedReportIndex = 0)
    MsgBox % "AHK-SmartWonder: No related report > 90 days found."
}

#IfWinActive
