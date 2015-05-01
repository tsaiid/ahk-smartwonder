; Set Predefined Exam Flow

;; A function to calculate the weekday for a specific date.
;; 0: Sun, 1: Mon, etc.
;; Currently, only used here.
Weekday(testDate) {
  FormatTime, deltaDay, A_Now, yyyyMMdd
  todayWday := A_WDay - 1

  EnvSub, deltaDay, %testDate%, days

  wday := mod(todayWday - deltaDay, 7)
  If (wday < 0) {
    wday += 7
  }
  Return wday
}

;; Set Predefined Exam Flow
;; The definition of work flow is set inside currently.
SetPredefinedExamFlow() {
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  tabIframe2 := frmWork.document.frames["tabIframe2"]

  tabFunction := tabIframe2.document.getElementById("tabFunction")
  selFlow := tabFunction.children[0].children[0].children[1].children[0].children[0].children[0].children[0].children[0]

  ;; get current exam name
  tmpStr := tabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  examName := splittedTmpStr2

  ;; get current exam date and weekday
  examDate := tabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[3].children[1].innerText
  examWday := Weekday(examDate)

  examNameMap := {  "Double contrast Barium enema":           "BE"
                  , "IVP & PV":                               "IVP"
                  , "IVP (IV urography)":                     "IVP"
                  , "HSG -Hysterosalpingography":             "SPE"
                  , "Voiding cystourethrography":             "SPE"
                  , "Defecography":                           "SPE"
                  , "Fistulography":                          "SPE"
                  , "Retrograde urethrography":               "SPE"
                  , "Cystography":                            "SPE"
                  , "Esophagography":                         "UGI"
                  , "Upper G-I Series":                       "UGI"
                  , "Small intestine":                        "UGI"
                  , "UGI + Small intestine":                  "UGI"
                  , "Hypotonic duodenography":                "UGI"
                  , "Antegrade pyelography, RT":              "SPE"
                  , "Antegrade pyelography, LT":              "SPE"
                  , "T-tube cholangiography":                 "SPE"
                  , "CT whole abdomen with/no contras":       "ACT"
                  , "CT Stomach with/no contrast":            "ACT"
                  , "CT Pan or Liver with/no contrast":       "ACT"
                  , "CTA,Abdomen":                            "ACT"
                  , "CTA, Chest-Aorta, PE":                   "CCT"
                  , "CT chest with/no contrast":              "CCT"
                  , "CT chest no contrast":                   "CCT" }

  wdayMap := {  1: {  "UGI":  "4320_0750"
                    , "IVP":  "4320_0750"
                    , "CCT":  "4320_0176"
                    , "ACT":  "4320_0174" }
              , 2: {  "BE":   "4320_0750"
                    , "IVP":  "4320_0750"
                    , "CCT":  "4320_0176" }
              , 3: {  "BE":   "4320_3519"
                    , "UGI":  "4320_3519"
                    , "SPE":  "4320_3519"
                    , "IVP":  "4320_3519"
                    , "CCT":  "4320_0176" }
              , 4: {  "UGI":  "4320_1796"
                    , "IVP":  "4320_1796"
                    , "CCT":  "4320_0176" }
              , 5: {  "BE":   "4320_0750"
                    , "SPE":  "4320_0750"
                    , "IVP":  "4320_0750"
                    , "CCT":  "4320_0176" }
              , 6: {  "ACT":  "4320_0174" }
              , 0: {  "ACT":  "4320_0174" } }

  newFlow := wdayMap[examWday][examNameMap[examName]]
  map := examNameMap[examName]
  If (!newFlow) {
    MsgBox, The flow is not defined: "%examName%", "%map%", "%examWday%".
  } Else {
    selFlow.click()

    divSelFlow := tabIframe2.document.getElementById("divSelFlow")
    inputSelFlow := tabIframe2.document.getElementsByName("inputSelFlow")[0]

    Loop % inputSelFlow.children.length {
      If (inputSelFlow.children[A_Index].value = newFlow) {
        inputSelFlow.selectedIndex := A_Index
        Break
      }
    }

    If (inputSelFlow.selectedIndex > -1) {
      flowChange := tabIframe2.document.getElementsByName("FlowChange")[0]
      flowChange.click()
    } Else {
      flowExit := divSelFlow.children[0].children[0].children[0].children[0].children[1]
      flowExit.click()
      MsgBox, "No flow selected. Please check the setting."
    }
  }
}