; 因為把資料存入 Clipboard 要一點時間，
; 所以用一個 Loop 來確保資料已經 copy 進去
CopyToClipboard(MyForm)
{
  Clipboard := MyForm
  Loop {
    Sleep, 100
  } Until (Clipboard = MyForm)
}