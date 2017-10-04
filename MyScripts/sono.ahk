; Sono
;; Hotstrings
::s-foley::s/p Foley catheterization. The urinary bladder is not distended enough for evaluation.
::ru3us::A tiny stone at upper third of right ureter, with mild hydronephrosis.
::rl3us::A tiny stone at lower third of right ureter, with mild hydronephrosis and hydroureter.
::lu3us::A tiny stone at upper third of left ureter, with mild hydronephrosis.
::ll3us::A tiny stone at lower third of left ureter, with mild hydronephrosis and hydroureter.
::s-scr-ok::The size and vascularity of bilateral testes and epididymides are within normal limits.
::s-fl::Coarsening and hyperechoic liver parenchyma echo pattern without focal lesion noted, in favor of fatty liver change.
::s-mfl::Slightly increased hyperechoic liver parenchyma without focal lesion noted, in favor of mild fatty liver change.
::s-ngb::The gallbladder is not seen, may be due to previous cholecystectomy.
::s-ckd::Cortical thinning, increased echogenicity, and small sizes of both kidneys, in favor of chronic kidney disease.
::s-p/c::The gallbladder was not found, most likely resected at the previous operation.
::s-nnpo::Probably due to non-NPO status, the gallbladder is not distended enough for evaluation. However, no focal lesion is noted.
::s-nf::The urinary bladder is not distended enough for evaluation. However, no focal lesion is noted.
::s-gp::A tiny echogenic polyp, __ cm in size, in the gallbladder noted. Cholesterol polyp is considered.
::s-ga::Presence of tiny GB adenomyomatoses with RA (Rokitanski-Aschoff) sinus noted.
::s-rcs::Several renal cysts in both kidneys, size up to __ cm.
::s-hcs::Several hepatic cysts, size up to __ cm.

;; Sono, Breast
::sbrspp::S/P previous right BCS (Breast conservation surgery) without evidence of local recurrence.
::sblspp::S/P previous left BCS (Breast conservation surgery) without evidence of local recurrence.
::sbbspp::S/P previous bilateral BCS (Breast conservation surgery) without evidence of local recurrence.
::sbrspm::S/P previous right modified radical mastectomy without evidence of local recurrence.
::sblspm::S/P previous left modified radical mastectomy without evidence of local recurrence.
::sbbspm::S/P previous bilateral modified radical mastectomy without evidence of local recurrence.
::sbrln::A reactive lymph node at right axilla noted.
::sblln::A reactive lymph node at left axilla noted.
::sbbln::Reactive lymph nodes at both axillae noted.
::sbblnok::No definite lymphadenopathy at both axillae noted.
::sbrc::Presence of an anechoic cyst at __ o'clock position of right breast, measuring about __ cm in size. Fibrocystic disease considered.
::sblc::Presence of an anechoic cyst at __ o'clock position of left breast, measuring about __ cm in size. Fibrocystic disease considered.
::sbrcs::Presence of several small anechoic cysts at right breast noted. Fibrocystic change considered.
::sblcs::Presence of several small anechoic cysts at left breast noted. Fibrocystic change considered.
::sbbcs::Presence of several small anechoic cysts at bilateral breasts noted. Fibrocystic change considered.
::sbb2::ACR-BIRADS 5th ed., category 2. Follow up as routine screening is recommended.
::sbb3::ACR-BIRADS 5th ed., category 3. Probably benign. Suggest short-interval (3-6 month) follow-up.
::sbb4a::ACR-BIRADS 5th ed., category 4a. Biopsy is recommended to exclude benign-looking malignancy.
::sbb4b::ACR-BIRADS 5th ed., category 4b. Suspicious abnormality carrying intermediate probability of malignancy was noted. Biopsy recommended.
::sbrfa::Presence of an oval, smooth-bordered, hypoechoic nodular lesion, measuring about __ x __ cm in size, at __ o'clock position of right breast, __ cm from the nipple. More likely benign nature such as fibroadenoma.
::sblfa::Presence of an oval, smooth-bordered, hypoechoic nodular lesion, measuring about __ x __ cm in size, at __ o'clock position of left breast, __ cm from the nipple. More likely benign nature such as fibroadenoma.
::sbrfas::Presence of several oval, smooth-bordered, hypoechoic nodular lesions, up to __ cm in size, at __ o'clock position of right breast. More likely benign nature such as fibroadenomas.
::sblfas::Presence of several oval, smooth-bordered, hypoechoic nodular lesions, up to __ cm in size, at __ o'clock position of left breast. More likely benign nature such as fibroadenomas.
::sbbfas::Presence of several oval, smooth-bordered, hypoechoic nodular lesions, up to __ cm in size, in bilateral breasts. More likely benign nature such as fibroadenomas.
::sblok::No focal lesion in the left breast.
::sbrok::No focal lesion in the right breast.
::sbbok::No focal lesion in the bilateral breasts.
::sbrca::
  MyForm =
(
An irregular, hypoechoic nodule, measuring about __ cm in size, is noted at right breast, __ o'clock position / __  cm from nipple.
Relatively increased intratumoral flow noted.
Breast cancer is suspected.
)
  Paste(MyForm, false)
Return

::sbok::
  MyForm =
(
Preserved echogenicities of the fibroglandular tissue of bilateral breast parenchyma.
No evident ductal dilatation.
No significant lesion of bilateral breast parenchyma.

According to the ACR-BIRADS (5th ed.), a category 1 report of the breast is considered.
No dominant mass or suspicious calcification.
)
  Paste(MyForm, false)
Return

;; Forms
::s-labd::
  ;GetSonoSR()

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  ;GetSonoSR2(AccNo, tabIframe2)

  LeftKidney := tabIframe2.document.getElementById("sr_left_kidney") ? tabIframe2.document.getElementById("sr_left_kidney").value : "__ cm"
  RightKidney := tabIframe2.document.getElementById("sr_right_kidney") ? tabIframe2.document.getElementById("sr_right_kidney").value : "__ cm"

  Sex := StrSplit(tabIframe2.document.getElementById("tabPatient").children(0).children(0).children(0).children(0).innerText, "/")[2]
  Prostate := tabIframe2.document.getElementById("sr_prostate") ? tabIframe2.document.getElementById("sr_prostate").value : "__ ml"

  MyForm =
(
No obvious bulky retroperitoneal mass lesion.

Right renal size about %RightKidney%; left renal size about %LeftKidney%.
Normal size and echogenicity over bilateral kidneys without hydronephrosis nor nephrolithiasis noted.

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

  ;GetSonoSR2(AccNo, tabIframe2)

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
)

  Sleep 300 ; Probably more than enough. Depends on the system.
  Paste(MyForm, false)
Return

::s-uabdok::
  MyForm =
(
The visualized portion of pancreas is unremarkable.

Normal liver parenchyma echo pattern without focal lesion noted.

The gallbladder is well distended with smooth wall.
No abnormal dilatation of IHDs and CBD noted.

The visualized portion of spleen is unremarkable.

Bilateral kidneys are normal in size and echogenicity.
No abnormal dilatation of bilateral urinary collecting systems noted.
)
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

::scar::
  MyForm =
(
Presence of RT calcified plaques measuring up to 0. x 0. cm (length x thickness) at right __carotid bulb and extracranial ICA__ without significant luminal stenosis.
Unremarkable RT CCA and ICA.

Presence of a calcified plaque measuring about 0. x 0. cm (length x thickness) at left __ICA orifice__ without significant luminal stenosis.
Unremarkable left CCA and ICA.

No significant luminal stenosis.

Carotid Intima-media thickness (CIMT): right carotid [0.] mm; left carotid [0.] mm (referenced threshold: 0.9 mm)
)
  Paste(MyForm, false)
Return

::s-nodvt::
  MyForm =
(
Bilateral deep veins of lower limbs, from femoral to popliteal regions, are patent.
No evidence of deep vein thrombosis.
)
  Paste(MyForm, false)
Return

::sprca::
  MyForm =
(
Presence of a focal hypoechoic nodular lesion about __ cm in diameter at the peripheral zone of __ lobe of prostate.
CA of prostate is suspected.
Further evaluation recommended.
)
  Paste(MyForm, false)
Return

::sprbph::
  MyForm =
(
Nodular hyperechoic change in the transitional zone noted. Nodular hyperplasia considered.
The prostate was measured about __ cc in volume.
)
  Paste(MyForm, false)
Return

::sprok::
  MyForm =
(
No definite focal lesion in the peripheral zone of prostate, normal appearance of the inner glands, with the prostate  measured about 20 ml in volume.
Normal appearance of the seminal vesicles.
)
  Paste(MyForm, false)
Return

::sprsp::
  MyForm =
(
S/P previous TURP with a central cleft of the prostate noted.
The prostate was measured about __ cc in volume.
)
  Paste(MyForm, false)
Return

::sprsok::Normal appearance of the seminal vesicles.

::ssv::
  MyForm =
(
Presence of convoluted vascular structure within bilateral hemiscrotums with back flow noted in Valsalva maneuver.
More promient of the left/right, with the vascular diameter measuring up to __ cm in diameter.
Varicoceles considered.

Normal size of the testes. Normal epididymides.
)
  Paste(MyForm, false)
Return
