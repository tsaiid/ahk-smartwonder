; HotKey
;; for SmartWonder
#IfWinActive, tedpc-
;;; Select Tabs
$^1:: ; 報告編輯
  MouseGetPos, xpos,ypos
  Click 300, 180
  MouseMove, %xpos%, %ypos%
return

$^3:: ; 歷史報告
  MouseGetPos, xpos,ypos
  Click 700, 180
  MouseMove, %xpos%, %ypos%
return
#IfWinActive