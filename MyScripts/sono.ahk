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

::stas::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  GetTasSR2(AccNo, tabIframe2)

  LeftOvaryL := tabIframe2.document.getElementById("sr_LeftOvaryL") ? tabIframe2.document.getElementById("sr_LeftOvaryL").value : "_ cm"
  LeftOvaryW := tabIframe2.document.getElementById("sr_LeftOvaryW") ? tabIframe2.document.getElementById("sr_LeftOvaryW").value : "_ cm"
  LeftOvaryH := tabIframe2.document.getElementById("sr_LeftOvaryH") ? tabIframe2.document.getElementById("sr_LeftOvaryH").value : "_ cm"
  LeftOvaryVol := tabIframe2.document.getElementById("sr_LeftOvaryVol") ? tabIframe2.document.getElementById("sr_LeftOvaryVol").value : "_ ml"
  RightOvaryL := tabIframe2.document.getElementById("sr_RightOvaryL") ? tabIframe2.document.getElementById("sr_RightOvaryL").value : "_ cm"
  RightOvaryW := tabIframe2.document.getElementById("sr_RightOvaryW") ? tabIframe2.document.getElementById("sr_RightOvaryW").value : "_ cm"
  RightOvaryH := tabIframe2.document.getElementById("sr_RightOvaryH") ? tabIframe2.document.getElementById("sr_RightOvaryH").value : "_ cm"
  RightOvaryVol := tabIframe2.document.getElementById("sr_RightOvaryVol") ? tabIframe2.document.getElementById("sr_RightOvaryVol").value : "_ ml"
  UterusL := tabIframe2.document.getElementById("sr_UterusL") ? tabIframe2.document.getElementById("sr_UterusL").value : "_ cm"
  UterusW := tabIframe2.document.getElementById("sr_UterusW") ? tabIframe2.document.getElementById("sr_UterusW").value : "_ cm"
  UterusH := tabIframe2.document.getElementById("sr_UterusH") ? tabIframe2.document.getElementById("sr_UterusH").value : "_ cm"
  UterusVol := tabIframe2.document.getElementById("sr_UterusVol") ? tabIframe2.document.getElementById("sr_UterusVol").value : "_ ml"
  Endometrium := tabIframe2.document.getElementById("sr_Endometrium") ? tabIframe2.document.getElementById("sr_Endometrium").value : "_ cm"

  MyForm =
(
Transabdominal ultrasonography of the pelvis

Well distended bladder. No focal lesion of the UB noted.
The uterus was measured as %UterusL% x %UterusW% x %UterusH% cm in size.

The endometrium was measured about %Endometrium% in thickness.

The RT ovary was measured as %RightOvaryL% x %RightOvaryW% x %RightOvaryH% cm (%RightOvaryVol% ml) in size.

The LT ovary was measured as %LeftOvaryL% x %LeftOvaryW% x %LeftOvaryH% cm (%LeftOvaryVol% ml) in size.


Impression: Essentially unremarkable study.
)
  Paste(MyForm, false)
Return
