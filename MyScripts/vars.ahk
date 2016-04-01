; Global Variables
prevExamDate := ""
currAccNo := ""

;; counters for statistics
cntGetPreviousReport := 0
cntGetPreviousReportSuccess := 0

; Keystroke Counter
;; Modified from: https://autohotkey.com/board/topic/2761-keystrokemouse-clickmovement-count/
;if (ENABLE_KEY_COUNTER) {
  v_Count := 0
  m_Count_Lt := 0
  m_Count_Md := 0
  m_Count_Rt := 0

  Loop
  {
    Input Key, L1 V, {ScrollLock}{CapsLock}{NumLock}{TAB}{Esc}{BS}{Enter}{PrintScreen}{Pause}{LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}
    if (ErrorLevel contains EndKey) {
      if (ErrorLevel <> v_PriorEndKey) {
        v_Count++
      }
      v_PriorEndKey = %ErrorLevel%
    }
    if (ErrorLevel contains Max) {
      v_Count++
    }
  }
;}

~*LButton::
  if (ENABLE_KEY_COUNTER) {
    m_Count_Lt++
  }
Return

~*RButton::
  if (ENABLE_KEY_COUNTER) {
    m_Count_Rt++
  }
Return

~*MButton::
  if (ENABLE_KEY_COUNTER) {
    m_Count_Md++
  }
Return