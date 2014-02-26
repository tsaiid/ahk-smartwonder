; Copy Order After "Purpose"
;; for SmartWonder
#IfWinActive, VGHKS-

$^i::
  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]

  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value
  OrderId = OrderDiag_%accNo%
  OrderDiag := tabIframe2.document.getElementById(OrderId).value
  ; 只取 "Purpose :" 以後的字串
  StringReplace, NewOrderDiag, OrderDiag, Purpose :, ``, All
  StringSplit, OrderDiagSplit, NewOrderDiag, ``, %A_Space%%A_Tab%
  ; 再把 "History & Data:" 拿掉
  StringReplace, TmpOrderDiag, OrderDiagSplit2, History & Data:, , All
  ; 有時候 "History & Data :" 會有空格
  StringReplace, MyOrderDiag, TmpOrderDiag, History & Data :, , All

  Paste(MyOrderDiag)
Return
#IfWinActive
