FrameWait(FrameCom)
{
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

;; Check Age

;; Check Agatston Score

;; Open An IE window and navigate
wb := ComObjCreate("InternetExplorer.Application")
wb.Visible := True
WinMaximize, % "ahk_id " wb.hwnd
wb.Navigate("https://www.mesa-nhlbi.org/Calcium/input.aspx")

FrameWait(wb)

wb.Document.All.Age.Value := "55"
wb.Document.All.gender.Value := "0"
wb.Document.All.Race.Value := "1"
wb.Document.All.Score.Value := "155"

wb.Document.All.Calculate.Click()

FrameWait(wb)

NZCalScore := wb.document.getElementById("Label10").innerText

MsgBox % NZCalScore

;wb.quit
