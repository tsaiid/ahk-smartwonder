; my Lib
;; Join Array Strings in English style

ArrayStrJoin(Arr) {
  JoinedStr := ""
  totalItem := Arr.MaxIndex()
  Loop % totalItem {
    If (A_Index > 1) {
      If (totalItem = 2) {
        JoinedStr .= " and "
      } Else {
        If (A_Index = totalItem) {
          JoinedStr .= ", and "
        } Else {
          JoinedStr .= ", "
        }
      }
    }
    JoinedStr .= Arr[A_Index]
  }
  Return JoinedStr
}