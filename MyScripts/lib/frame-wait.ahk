; 在某些莫名的狀況，從 iframe 裡會發生 access denied 的錯誤，
; 用 try - catch 的方式來閃開這個錯誤

FrameWait(FrameCom)
{
  Loop {
    Try {
      Loop    ;if readyState = complete
        Sleep, 10
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
