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
  FoundPos := RegExMatch(OrderDiag, "^.*Purpose :\s*(.*?)\s*(History &(amp;)? Data\s*:(.*?)\s*)?$", OrderMatch)
  if (FoundPos > 0) {
    ; 如果沒有句點則加上句點
    StringRight, strEndChar, OrderMatch1, 1
    strPurpose := (strEndChar = ".") ? OrderMatch1 : OrderMatch1 . "."
    StringRight, strEndChar, OrderMatch4, 1
    strHistory := (strEndChar = ".") ? OrderMatch4 : OrderMatch4 . "."

    ; 有時  purpose 和 history 部份內容會重複，留下比較長的就好
    if (InStr(OrderMatch1, OrderMatch4, true)) {
      MyOrderDiag := strPurpose
    } else if (InStr(OrderMatch4, OrderMatch1, true)) {
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
