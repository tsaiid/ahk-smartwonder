; HotKey
;; for SmartWonder
#IfWinActive, tedpc-

$^0::
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
  tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
  ; 切換至歷史報告頁
  tabPrevReport.click()

  FrameWait(frmTabIframe2)

  ;; get current exam date and time
  frmHistory2 := frmTabIframe2.frames["History2"]

  FrameWait(frmHistory2)

  currExamName := frmHistory2.document.getElementById("BodyPart").innerText
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
    Else {
      prevReportListsLength := prevReportLists.children.length
      getPrevReport := 0
      relatedReportCount := 0
      Loop %prevReportListsLength% {
        If RegExMatch(prevReportLists.children[A_Index].children[7].innerText, currPattern) {
          ; 先找出所有相關報告
          ;; 排除比目前日期晚的
          prevExamDate := prevReportLists.children[A_Index].children[4].innerText
          ;; convert string to int for date and time
          StringReplace prevExamDate, prevExamDate, -,, All

          If (prevExamDate <= currExamDate) {
            relatedReportCount += 1
            arrayRelatedReportIndex%relatedReportCount% := A_Index + 0  ; convert to integer
          }

          ;; 先抓 5 比出來就好，理論上一天應該不會超過五次相同的檢查
          If (relatedReportCount >= 5)
            Break
        }
      }

      Loop %relatedReportCount% {
        ; 必須要是比當前報告早的報告
        index := arrayRelatedReportIndex%A_Index%
        prevExamDate := prevReportLists.children[index].children[4].innerText
        prevExamTime := prevReportLists.children[index].children[5].innerText

        ;; convert string to int for date and time
        StringReplace prevExamDate, prevExamDate, -,, All
        prevExamTime := prevExamTime + 0

        If (currExamDate > prevExamDate && getPrevReport = 0) {
          getPrevReport := index
          Break
        } Else If (currExamDate = prevExamDate && currExamTime > prevExamTime) {
          ; 因為同一日內更新的報告會在下方，所以先不 break, 繼續往下找
          getPrevReport := index
        }
      }

      If (getPrevReport > 0) {  ; 有找到相關的報告
        latestRelatedReport := prevReportLists.children[getPrevReport].children[1]
        latestRelatedReport.click() ; 點最近報告、開影像

        frmPrevReport := frmTabIframe2.document.frames["History3"]

        FrameWait(frmPrevReport)

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
return

#IfWinActive
