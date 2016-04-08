; Keystroke Counter
;; Modified from: https://autohotkey.com/board/topic/2761-keystrokemouse-clickmovement-count/

if (ENABLE_KEY_COUNTER) {
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
}

; Mouse Counters
~LButton::
  if (ENABLE_KEY_COUNTER) {
    m_Count_Lt++
  }
Return

~RButton::
  if (ENABLE_KEY_COUNTER) {
    m_Count_Rt++
  }
Return

~MButton::
  if (ENABLE_KEY_COUNTER) {
    m_Count_Md++
  }
Return

#=::     ; display current counters and reset them
  if (ENABLE_KEY_COUNTER) {
    msg := ""
    if (varExist(cntGetPreviousReport)) {
      msg .= "GetPreviousReport = " . cntGetPreviousReport . "`nGetPreviousReportSuccess = " . cntGetPreviousReportSuccess . "`n"
      cntGetPreviousReport := 0
      cntGetPreviousReportSuccess := 0
    }
    if (varExist(v_Count)) {
      m_Count := m_Count_Lt + m_Count_Md + m_Count_Rt
      msg .= "Keystroke = " . v_Count . "`nMouse click = " . m_Count . "`n"
      msg .= "LeftButton = " . m_Count_Lt . "`nMiddleButton = " . m_Count_Md . "`nRightButton = " . m_Count_Rt . "`n"
      v_Count := 0
      m_Count_Lt := 0
      m_Count_Md := 0
      m_Count_Rt := 0
    }

    if (varExist(cntGetPreviousReport) || varExist(v_Count)) {
      msg .= "The counters are going to be reset."
      MsgBox % msg
    }
  }
Return
