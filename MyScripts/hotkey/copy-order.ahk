; Copy Order After "Purpose"
;; for SmartWonder
#IfWinActive ahk_group SmartWonder

CopyOrder(toLower = 0)
{
  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]

  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value
  OrderId = OrderDiag_%accNo%
  OrderDiag := tabIframe2.document.getElementById(OrderId).value

  ; 只取 "Purpose :" 以後的字串, 把 "History & Data:" 拿掉
  FoundPos := RegExMatch(OrderDiag, "^.*?(Reason :\s*(.*?))?((No history of i|I)mpaired renal func.*?)Purpose :\s*(.*?)\s*(History &(amp;)? Data\s*:(.*?)\s*)?$", OrderMatch)
  if (FoundPos > 0) {
    ; 如果沒有句點則加上句點
    StringRight, strEndChar, OrderMatch5, 1
    strPurpose := (strEndChar = ".") ? OrderMatch5 : OrderMatch5 . "."
    StringRight, strEndChar, OrderMatch8, 1
    strHistory := (strEndChar = ".") ? OrderMatch8 : OrderMatch8 . "."

    ; 有時  purpose 和 history 部份內容會重複，留下比較長的就好
    if (InStr(OrderMatch5, OrderMatch8, true)) {
      MyOrderDiag := strPurpose
    } else if (InStr(OrderMatch8, OrderMatch5, true)) {
      MyOrderDiag := strHistory
    } else {
      MyOrderDiag := strPurpose . " " . strHistory
    }
  } else {
    MyOrderDiag := OrderDiag
  }

  ; 有些人會打很多 ..., 刪掉
  MyOrderDiag := RegExReplace(MyOrderDiag, "\.{2,}", ". ")

  if (toLower) {
    StringLower, MyOrderDiag, MyOrderDiag
  }

  return MyOrderDiag
}

#IfWinActive
