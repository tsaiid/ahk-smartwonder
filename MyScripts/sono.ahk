; Sono
;; Hotstrings
::s-foley::s/p Foley catheterization. The urinary bladder is not distended enough for evaluation.
::ruus::A tiny stone at upper third of right ureter, with mild hydronephrosis.
::rlus::A tiny stone at lower third of right ureter, with mild hydronephrosis and hydroureter.
::luus::A tiny stone at upper third of left ureter, with mild hydronephrosis.
::llus::A tiny stone at lower third of left ureter, with mild hydronephrosis and hydroureter.
::s-scr-ok::The size and vascularity of bilateral testes and epididymides are within normal limits.
::s-fl::Coarsening and hyperechoic liver parenchyma echo pattern without focal lesion noted, in favor of fatty liver change.
::s-ngb::The gallbladder is not seen, may be due to previous cholecystectomy.
::s-ckd::Cortical thinning, increased echogenicity, and small sizes of both kidneys, in favor of chronic kidney disease.
::s-p/c::The gallbladder was not found, most likely resected at the previous operation.

;; Forms
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

  LeftKidney := tabIframe2.document.getElementById("sr_left_kidney")
              ? tabIframe2.document.getElementById("sr_left_kidney").value : "_ cm"
  RightKidney := tabIframe2.document.getElementById("sr_right_kidney")
               ? tabIframe2.document.getElementById("sr_right_kidney").value : "_ cm"
  Spleen := tabIframe2.document.getElementById("sr_spleen")
          ? tabIframe2.document.getElementById("sr_spleen").value : "_ cm"

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

  Sleep 300 ; Probably more than enough. Depends on the system.
  Paste(MyForm, false)
Return

::stas::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  GetTasSR2(AccNo, tabIframe2)

  LeftOvaryL := tabIframe2.document.getElementById("sr_leftOvaryL")
              ? StrSplit(tabIframe2.document.getElementById("sr_leftOvaryL").value, A_Space)[1] : "_"
  LeftOvaryW := tabIframe2.document.getElementById("sr_leftOvaryW")
              ? StrSplit(tabIframe2.document.getElementById("sr_leftOvaryW").value, A_Space)[1] : "_"
  LeftOvaryH := tabIframe2.document.getElementById("sr_leftOvaryH")
              ? StrSplit(tabIframe2.document.getElementById("sr_leftOvaryH").value, A_Space)[1] : "_"
  LeftOvaryVol := tabIframe2.document.getElementById("sr_leftOvaryVol")
                ? StrSplit(tabIframe2.document.getElementById("sr_leftOvaryVol").value, A_Space)[1] : "_"
  RightOvaryL := tabIframe2.document.getElementById("sr_rightOvaryL")
               ? StrSplit(tabIframe2.document.getElementById("sr_rightOvaryL").value, A_Space)[1] : "_"
  RightOvaryW := tabIframe2.document.getElementById("sr_rightOvaryW")
               ? StrSplit(tabIframe2.document.getElementById("sr_rightOvaryW").value, A_Space)[1] : "_"
  RightOvaryH := tabIframe2.document.getElementById("sr_rightOvaryH")
               ? StrSplit(tabIframe2.document.getElementById("sr_rightOvaryH").value, A_Space)[1] : "_"
  RightOvaryVol := tabIframe2.document.getElementById("sr_rightOvaryVol")
                 ? StrSplit(tabIframe2.document.getElementById("sr_rightOvaryVol").value, A_Space)[1] : "_"
  UterusL := tabIframe2.document.getElementById("sr_UterusL")
           ? StrSplit(tabIframe2.document.getElementById("sr_UterusL").value, A_Space)[1] : "_"
  UterusW := tabIframe2.document.getElementById("sr_UterusW")
           ? StrSplit(tabIframe2.document.getElementById("sr_UterusW").value, A_Space)[1] : "_"
  UterusH := tabIframe2.document.getElementById("sr_UterusH")
           ? StrSplit(tabIframe2.document.getElementById("sr_UterusH").value, A_Space)[1] : "_"
  UterusVol := tabIframe2.document.getElementById("sr_UterusVol")
             ? StrSplit(tabIframe2.document.getElementById("sr_UterusVol").value, A_Space)[1] : "_"
  Endometrium := tabIframe2.document.getElementById("sr_Endometrium")
               ? StrSplit(tabIframe2.document.getElementById("sr_Endometrium").value, A_Space)[1] : "_"

  ; Chief Huang seems like to use cm as unit
  If (Endometrium != "_" && StrSplit(tabIframe2.document.getElementById("sr_Endometrium").value, A_Space)[2] = "mm") {
    Endometrium := Round(Endometrium / 10, 1)
  }

  MyForm =
(
Transabdominal ultrasonography of the pelvis

Well distended bladder. No focal lesion of the UB noted.
The uterus was measured as %UterusL% x %UterusH% x %UterusW% cm in size.

The endometrium was measured about %Endometrium% cm in thickness.

The RT ovary was measured as %RightOvaryL% x %RightOvaryH% x %RightOvaryW% cm (%RightOvaryVol% ml) in size.

The LT ovary was measured as %LeftOvaryL% x %LeftOvaryH% x %LeftOvaryW% cm (%LeftOvaryVol% ml) in size.


Impression: Essentially unremarkable study.
)
  Paste(MyForm, false)
Return
