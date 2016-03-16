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
  FoundPos := RegExMatch(OrderDiag, "^.*?(Reason :\s*(.*?))?((No history of i|I)mpaired renal func.*?)Purpose :\s*(.*?)(History &(amp;)? Data\s*:(.*))?$", OrderMatch)
  if (FoundPos > 0) {
    MyOrderDiag := (OrderMatch5 = OrderMatch8) ? OrderMatch5 : OrderMatch5 . OrderMatch8
  } else {
    MyOrderDiag := OrderDiag
  }

  if (toLower) {
    StringLower, MyOrderDiag, MyOrderDiag
  }

  return MyOrderDiag
}

#IfWinActive
