; My RegEx HotStrings
#Include Lib\Hotstrings.ahk
hotstrings("plsp(\d)(\d)\s", "plsp")
hotstrings("g(\d+)\n", "g")
Return

plsp:
    start := $1
    end := $2
  if (end <= start and end != 1)
    return
    If (start = 1 and start = end) ; L1~S1
    {
      range := "L1~S1"
      cage := "L1-2, L2-3, L3-4, L4-5, L5-S1"
    }
    Else
    {
    range = L%start%~
    if (end = 1)
    {
      range = %range%S1
    }
    else
    {
      range = %range%L%end%
    }
    cage = L%start%
        Loop
    {
      startStr = %start%
      if (++start = end)
      {
        cage = %cage%-%end%
        break
      }
      else
        if (end = 1 and start = 6)
        {
          cage = %cage%-S1
          break
        }
        else
          endStr = %start%
      cage = %cage%-%endStr%, L%endStr%
    }
    }
  rangeStr = Post laminectomy, transpedicular screws, rods fixation at %range%.
  cageStr = Post interbody cage placement at %cage%.
    SendInput, %rangeStr%
  SendInput, {Enter}
  SendInput, %cageStr%
Return

#IfWinActive ahk_class TImgViewPort

g:
  GoToImage($1)
Return

#IfWinActive