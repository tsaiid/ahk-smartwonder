; HotKey
;; for SmartWonder
#IfWinActive ahk_group SmartWonder

;; Get previous related reports with images
;;; CopyReport: true or false, copy the latest report or not.
;;; LoadImages: true or false, load previous images or not.
;;; TotalRecentImages: numeric, how many previous images to be loaded.
;;; LoadFarImage: true or false, if TotalRecentImages all within 3 months, find a > 3 months images.
;;; ShowAlert: true or false, show alert message or directly insert the message into the report area.
GetPreviousReportWithImages(CopyReport=true, LoadImages=true, TotalRecentImages=2, LoadFarImage=true, ShowAlert=true) {
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
  patterns := SupportedExamPatterns()

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
  ; currExamTime format is strange, ex 095224.000, need to be trimmed.
  currExamTime := RegExReplace(currExamTime, "\.\d+", "")

  currExamDateTime := (currExamDate . currExamTime)

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
    prevReportDateArray := []
    Loop %prevReportListsLength% {
      If RegExMatch(prevReportLists.children[A_Index].children[7].innerText, currPattern) {
        ; 先找出所有相關報告
        prevExamDate := prevReportLists.children[A_Index].children[4].innerText
        prevExamTime := prevReportLists.children[A_Index].children[5].innerText
        ;; convert string to int for date and time
        ;prevExamTime := prevExamTime + 0
        prevExamDateTime := (prevExamDate . prevExamTime)

        ;; 排除比目前日期晚的
        deltaDateTime := currExamDateTime
        EnvSub, deltaDateTime, %prevExamDateTime%, Seconds
        ;MsgBox, c = %currExamDateTime%, p = %prevExamDateTime%, d = %deltaDateTime%
        If (deltaDateTime > 0) {
          prevExamDate_Time := (prevExamDate . "_" . prevExamTime)
          prevReportHash[prevExamDate_Time] := A_Index
          relatedReportCount += 1
        }
      }
    }

    farRelatedReportIndex := 0
    far3MonthsRelatedReportIndex := 0
    far6MonthsRelatedReportIndex := 0
    relatedReportCountIndex := relatedReportCount
    For key, value in prevReportHash {
      prevReportArray[relatedReportCountIndex] := value
      prevReportDateArray[relatedReportCountIndex] := StrSplit(key, "_")[1]
      relatedReportCountIndex--
    }

    ; 取得古早影像, 找出 3 個月內最遠的，以及 3-6 個月間最遠的, 且最近的幾份都在三個月內
    If (LoadFarImage) {
      deltaExamDate := currExamDate
      relatedExamDate := prevReportDateArray[TotalRecentImages]
      EnvSub, deltaExamDate, %relatedExamDate%, Days
      If (StrLen(relatedExamDate) && deltaExamDate < 90) {
        Loop %relatedReportCount% {
          If (A_Index > TotalRecentImages) {
            deltaExamDate := currExamDate
            relatedExamDate := prevReportDateArray[A_Index]
            EnvSub, deltaExamDate, %relatedExamDate%, Days
            If (deltaExamDate <= 90) {
              far3MonthsRelatedReportIndex := prevReportArray[A_Index]
            } Else If (deltaExamDate > 90 && deltaExamDate < 180) {
              far6MonthsRelatedReportIndex := prevReportArray[A_Index]
            }
          }
        }
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
            ;MsgBox % prevReportLists.children[prevReportArray[A_Index]].children[4].innerText
          }
        }

        If (LoadFarImage) {
          ; 先找 3-6 個月的，再找 3 個月內最遠的
          If (far6MonthsRelatedReportIndex > 0) {
            farRelatedReportIndex := far6MonthsRelatedReportIndex
          } Else If (far3MonthsRelatedReportIndex > 0) {
            farRelatedReportIndex := far3MonthsRelatedReportIndex
          }

          If (farRelatedReportIndex > 0) {
            farRelatedReport := prevReportLists.children[farRelatedReportIndex].children[1]
            farRelatedReport.click()
            ;MsgBox, far = %farRelatedReportIndex%
          }
        }
      }
    }
  }

  ; 切回報告編輯頁
  tabEditReport.click()
  If (ShowAlert) {
    If isNoPrevReport ; 完全沒有歷史報告
      MsgBox % tdMsgMore.innerText
    If (relatedReportCount = 0) ; 沒有找到相關的報告，顯示訊息
      MsgBox % "AHK-SmartWonder: No related report found."
    Else If (farRelatedReportIndex = 0)
      MsgBox % "AHK-SmartWonder: No related report > 90 days found."
  } Else {
    ; 輸出沒得比較的字串
    If (isNoPrevReport || relatedReportCount = 0) {
      FrameWait(frmTabIframe2)
      ReportContent := frmTabIframe2.document.getElementsByName("ReportContent")[0]
      ReportContent.innerText := "No related previous image for comparison." . Chr(13) . ReportContent.innerHTML
    }
  }
}

#IfWinActive
