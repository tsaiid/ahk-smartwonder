; HotKey
;; for SmartWonder

#IfWinActive ahk_group SmartWonder
return

^k:: ; 不要用 Ctrl-k 來確認報告
Return

^s::
  Send, ^k
Return
#IfWinActive