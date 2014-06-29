; Sono
::s-labd::
  ;GetSonoSR()

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  GetSonoSR2(AccNo, tabIframe2)

  LeftKidney := tabIframe2.document.getElementById("sr_left_kidney") ? tabIframe2.document.getElementById("sr_left_kidney").value : "_ cm"
  RightKidney := tabIframe2.document.getElementById("sr_right_kidney") ? tabIframe2.document.getElementById("sr_right_kidney").value : "_ cm"

  Sex := StrSplit(tabIframe2.document.getElementById("tabPatient").children(0).children(0).children(0).children(0).innerText, "/")[2]
  Prostate := tabIframe2.document.getElementById("sr_prostate") ? tabIframe2.document.getElementById("sr_prostate").value : "_ cm"

  MyForm =
(
Sonography of lower abdomen shows:

Right renal size about %RightKidney%; left renal size about %LeftKidney%.
Normal size and echogenicity over bilateral kidneys without hydronephrosis nor nephrolithiasis noted.
Under Doppler Ultrasound, normal blood flow pattern is noted over bilateral kidneys.
Normal appearance of urinary bladder. No stones nor sludge is noted.
)

  If (Sex = "M") {
    MyForm .= "`nProstate volume is about " . Prostate . "."
  }

  Paste(MyForm, false)
Return

::s-uabd::
  ;GetSonoSR()

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  GetSonoSR2(AccNo, tabIframe2)

  LeftKidney := tabIframe2.document.getElementById("sr_left_kidney") ? tabIframe2.document.getElementById("sr_left_kidney").value : "_ cm"
  RightKidney := tabIframe2.document.getElementById("sr_right_kidney") ? tabIframe2.document.getElementById("sr_right_kidney").value : "_ cm"
  Spleen := tabIframe2.document.getElementById("sr_spleen") ? tabIframe2.document.getElementById("sr_spleen").value : "_ cm"

  MyForm =
(
The visualized portion of pancreas is unremarkable.

Normal liver parenchyma echo pattern without focal lesion noted.

The gallbladder is well distended with smooth wall.
No abnormal dilatation of IHDs and CBD noted.

The visualized portion of spleen is unremarkable. Spleen size about %Spleen%.

Bilateral kidneys are normal in echogenicity.
Right kidney size about %RightKidney%; left kidney size about %LeftKidney%.
No abnormal dilatation of bilateral urinary collecting systems noted.

No pleural effusion or ascites noted.
)
  Paste(MyForm, false)
Return
