GetSideStr(inputStr)
{
  RegExMatch(inputStr, "iO)\b((RT|right)|(LT|left))\b", TheSide)

  if (TheSide.1) {
    TheSideStr := TheSide.1
    if (TheSide.Len(1) = 2) {
      StringUpper, TheSideStr, TheSideStr
    } else {
      StringLower, TheSideStr, TheSideStr
    }
  } else {
    TheSideStr := "_"
  }

  Return TheSideStr
}