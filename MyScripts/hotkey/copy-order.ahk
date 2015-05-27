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
  MyOrderDiag := RegExReplace(OrderDiag, "^.*Purpose :\s*(.*?)(History &(amp;)? Data\s*:(.*))?$", "$1$4")

  if (toLower) {
    StringLower, MyOrderDiag, MyOrderDiag
  }

  return MyOrderDiag
}

#IfWinActive
