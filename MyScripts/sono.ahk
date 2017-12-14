; Sono
;; Hotstrings
;; Sono, Upper Abdomen
::sfl::Coarsening and hyperechoic liver parenchyma echo pattern without focal lesion noted, in favor of fatty liver change.
::smfl::Slightly increased hyperechoic liver parenchyma without focal lesion noted, in favor of mild fatty liver change.
::slc::Irregular surface of the liver and coarsening change of the parenchyma, indicating liver cirrhosis.
::sngb::The gallbladder is not seen, may be due to previous cholecystectomy.
::sckd::Cortical thinning, increased echogenicity, and small sizes of both kidneys, in favor of chronic kidney disease.
::sspc::The gallbladder was not found, most likely resected at the previous operation.
::sgbnnpo::Probably due to non-NPO status, the gallbladder is not distended enough for evaluation. However, no focal lesion is noted.
::subnf::The urinary bladder is not distended enough for evaluation. However, no focal lesion is noted.
::sgbp::A tiny echogenic polyp, __ cm in size, in the gallbladder noted. Cholesterol polyp is considered.
::sgbps::Several tiny echogenic polyps, size up to __ cm, in the gallbladder noted. Cholesterol polyps are considered.
::sgbs::A __-cm echogenic lesion in GB with acoustic shadow, in favor gallstone.
::sgbss::Several echogenic lesions in GB with acoustic shadow, in favor gallstones.
::sgbss1::Several echogenic lesions in GB with postural change and acoustic shadow, in favor gallstones.
::sgba::Comet tail artifacts from the gallbladder wall, adenomyomatosis should be considered.
::sgba1::Presence of tiny GB adenomyomatoses with RA (Rokitanski-Aschoff) sinus noted.
::srbcs::Several renal cysts in the both kidneys, size up to  cm.{Left 4}
::srrc::A __-cm renal cyst in the right kidney.
::srrcs::Several renal cysts in the right kidney, size up to  cm.{Left 4}
::srlc::A __-cm renal cyst in the left kidney.
::srlcs::Several renal cysts in the left kidney, size up to  cm.{Left 4}
::shcs::Several hepatic cysts, size up to  cm.{Left 4}
::spb::The pancreas can not be well evaluated because of gas blockage.
::spaok::The visualized portion of pancreas is normal.
::bsm::Borderline splenomegaly, size about  cm.{Left 4}

;; Sono, Lower Abdomen
::s-foley::s/p Foley catheterization. The urinary bladder is not distended enough for evaluation.
::sruus::A tiny stone at upper third of right ureter, with mild hydronephrosis.
::srlus::A tiny stone at lower third of right ureter, with mild hydronephrosis and hydroureter.
::sluus::A tiny stone at upper third of left ureter, with mild hydronephrosis.
::sllus::A tiny stone at lower third of left ureter, with mild hydronephrosis and hydroureter.
::sscrok::The size and vascularity of bilateral testes and epididymides are within normal limits.

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
::sbb4c::ACR-BIRADS 5th ed., category 4c. Highly suspicious malignancy. Biopsy recommended.
::sbrfa::Presence of an oval, smooth-bordered, hypoechoic nodular lesion, measuring about __ x __ cm in size, at __ o'clock position of right breast, __ cm from the nipple. More likely benign nature such as fibroadenoma.
::sblfa::Presence of an oval, smooth-bordered, hypoechoic nodular lesion, measuring about __ x __ cm in size, at __ o'clock position of left breast, __ cm from the nipple. More likely benign nature such as fibroadenoma.
::sbrfas::Presence of several oval, smooth-bordered, hypoechoic nodular lesions, up to __ cm in size, at __ o'clock position of right breast. More likely benign nature such as fibroadenomas.
::sblfas::Presence of several oval, smooth-bordered, hypoechoic nodular lesions, up to __ cm in size, at __ o'clock position of left breast. More likely benign nature such as fibroadenomas.
::sbbfas::Presence of several oval, smooth-bordered, hypoechoic nodular lesions, up to __ cm in size, in bilateral breasts. More likely benign nature such as fibroadenomas.
::sblok::No focal lesion in the left breast.
::sbrok::No focal lesion in the right breast.
::sbbok::No focal lesion in the bilateral breasts.
::sbrl::__ cm in size, at __ o'clock position of right breast, __ cm from the nipple.
::sbll::__ cm in size, at __ o'clock position of left breast, __ cm from the nipple.
::sbrca::
  MyForm =
(
An irregular, hypoechoic nodule, measuring about __ cm in size, is noted at right breast, __ o'clock position / __  cm from nipple.
Relatively increased intratumoral flow noted.
Breast cancer is suspected.
)
  Paste(MyForm, false)
Return
::sblca::
  MyForm =
(
An irregular, hypoechoic nodule, measuring about __ cm in size, is noted at left breast, __ o'clock position / __  cm from nipple.
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
::sla::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  parsedSR := GetSonoSR_Local(AccNo)

  ;sometimes need to debug
  If (parsedSR.status.error) {
    MsgBox % parsedSR.status.message
  }

  measure := parsedSR.result
  LeftKidney := measure["kidney"]["left"] ? measure["kidney"]["left"] : "__ cm"
  RightKidney := measure["kidney"]["right"] ? measure["kidney"]["right"] : "__ cm"

  Sex := StrSplit(tabIframe2.document.getElementById("tabPatient").children(0).children(0).children(0).children(0).innerText, "/")[2]
  Prostate := measure["Prostate Vol"] ? measure["Prostate Vol"] : "__ ml"

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

::sua::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  parsedSR := GetSonoSR_Local(AccNo)

  ;sometimes need to debug
  If (parsedSR.status.error) {
    MsgBox % parsedSR.status.message
  }

  measure := parsedSR.result
  LeftKidney := measure["kidney"]["left"] ? measure["kidney"]["left"] : "__ cm"
  RightKidney := measure["kidney"]["right"] ? measure["kidney"]["right"] : "__ cm"
  Spleen := measure["spleen"] ? measure["spleen"] : "__ cm"

  MyForm =
(
The visualized portion of pancreas is normal.

Normal liver parenchyma echo pattern without focal lesion noted.

The gallbladder is well distended with smooth wall.
No abnormal dilatation of IHDs and CBD noted.

The visualized portion of spleen is normal. Spleen size about %Spleen%.

Bilateral kidneys are normal in echogenicity.
Right kidney size about %RightKidney%; left kidney size about %LeftKidney%.
No abnormal dilatation of bilateral urinary collecting systems noted.
)

  Sleep 300 ; Probably more than enough. Depends on the system.
  Paste(MyForm, false)
Return

::sua0::
  MyForm =
(
The visualized portion of pancreas is normal.

Normal liver parenchyma echo pattern without focal lesion noted.

The gallbladder is well distended with smooth wall.
No abnormal dilatation of IHDs and CBD noted.

The visualized portion of spleen is normal.

Bilateral kidneys are normal in size and echogenicity.
No abnormal dilatation of bilateral urinary collecting systems noted.
)
  Paste(MyForm, false)
Return

::suaok::
  MyForm =
(
No focal lesion in upper abdomen survey, including liver, GB, spleen, kidney or visible pancreas.
The sizes, surfaces and echo pattern of both kidneys are WNL.
)
  Paste(MyForm, false)
Return

::stas::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  parsedSR := GetSonoSR_Local(AccNo)

  ;sometimes need to debug
  If (parsedSR.status.error) {
    MsgBox % parsedSR.status.message
  }

  measure := parsedSR.result
  LeftOvaryL := measure["sr_leftOvaryL"]
              ? StrSplit(measure["sr_leftOvaryL"], A_Space)[1] : "_"
  LeftOvaryW := measure["sr_leftOvaryW"]
              ? StrSplit(measure["sr_leftOvaryW"], A_Space)[1] : "_"
  LeftOvaryH := measure["sr_leftOvaryH"]
              ? StrSplit(measure["sr_leftOvaryH"], A_Space)[1] : "_"
  LeftOvaryVol := measure["sr_leftOvaryVol"]
                ? StrSplit(measure["sr_leftOvaryVol"], A_Space)[1] : "_"
  RightOvaryL := measure["sr_rightOvaryL"]
               ? StrSplit(measure["sr_rightOvaryL"], A_Space)[1] : "_"
  RightOvaryW := measure["sr_rightOvaryW"]
               ? StrSplit(measure["sr_rightOvaryW"], A_Space)[1] : "_"
  RightOvaryH := measure["sr_rightOvaryH"]
               ? StrSplit(measure["sr_rightOvaryH"], A_Space)[1] : "_"
  RightOvaryVol := measure["sr_rightOvaryVol"]
                 ? StrSplit(measure["sr_rightOvaryVol"], A_Space)[1] : "_"
  UterusL := measure["sr_UterusL"]
           ? StrSplit(measure["sr_UterusL"], A_Space)[1] : "_"
  UterusW := measure["sr_UterusW"]
           ? StrSplit(measure["sr_UterusW"], A_Space)[1] : "_"
  UterusH := measure["sr_UterusH"]
           ? StrSplit(measure["sr_UterusH"], A_Space)[1] : "_"
  UterusVol := measure["sr_UterusVol"]
             ? StrSplit(measure["sr_UterusVol"], A_Space)[1] : "_"
  Endometrium := measure["sr_Endometrium"]
               ? StrSplit(measure["sr_Endometrium"], A_Space)[1] : "_"

  ; Chief Huang seems like to use cm as unit
  If (Endometrium != "_" && StrSplit(measure["sr_Endometrium"], A_Space)[2] = "mm") {
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


Impression: Essentially normal study.
)
  Paste(MyForm, false)
Return

::scar::
  MyForm =
(
Presence of RT calcified plaques measuring up to 0. x 0. cm (length x thickness) at right __carotid bulb and extracranial ICA__ without significant luminal stenosis.
Normal RT CCA and ICA.

Presence of a calcified plaque measuring about 0. x 0. cm (length x thickness) at left __ICA orifice__ without significant luminal stenosis.
Normal left CCA and ICA.

No significant luminal stenosis.

Carotid Intima-media thickness (CIMT): right carotid [0.] mm; left carotid [0.] mm (referenced threshold: 0.9 mm)
)
  Paste(MyForm, false)
Return

::sdvtok::
  MyForm =
(
Bilateral deep veins of lower limbs, from femoral to popliteal regions, are patent.
No evidence of deep vein thrombosis.
)
  Paste(MyForm, false)
Return

; TRUS related
GetProstateVol()
{
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  parsedSR := GetSonoSR_Local(AccNo)

  measure := parsedSR.result
  Prostate := measure["Prostate Vol"] ? measure["Prostate Vol"] : "__ ml"

  Return Prostate
}

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
  ProstateVol := GetProstateVol()

  MyForm =
(
Nodular hyperechoic change in the transitional zone noted. Nodular hyperplasia considered.
The prostate is measured about %ProstateVol% in volume.

Normal appearance of the seminal vesicles.
)
  Paste(MyForm, false)
Return

::sprok::
  ProstateVol := GetProstateVol()

  MyForm =
(
No definite focal lesion in the peripheral zone of prostate, normal appearance of the inner glands, with the prostate measured about %ProstateVol% in volume.
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

::stok::
  MyForm =
(
The sizes, surfaces, parenchymal thickness and echo pattern of both lateral lobes of thyroid are WNL.
Maximal AP distance  of RT lateral lobe : __ cm; of left lateral lobe: __ cm.

Bilateral neck lymph nodes noted with hila, favored benign lymph nodes.
)
  Paste(MyForm, false)
Return

::spel::
  MyForm =
(
The maximal thickness of uterine fundus is __ cm. The uterine cervix is __ cm thick.
The endometrium was mild visible under sonography.

The volume of RT ovary is about __ ml, and LT is about __ ml.

No obvious abnormal soft tissue mass noted under the sonography.
)
  Paste(MyForm, false)
Return

::sdrasok::
  MyForm =
(
Color doppler evaluation measured at the segmental arteries of both kidneys shows:

Normal perfusion of bilateral renal parenchyma.
Normal size and echogenicit of both kidneys.
Normal accleration time of bilateral renal segmental arteries, measuring between 30-60 msec, with the accleration index about 410-1330 cm/s2.
No evidence of upstream renal arterial stenosis.
)
  Paste(MyForm, false)
Return

::sdras+::
  MyForm =
(
Color doppler evaluation measured at the segmental arteries of both kidneys shows:

Relatively prolonged accleration time of -- renal segmental arteries, measuring between 130-180 msec, with the accleration index about 90-100cm/s2. Tardus-parvus waves suspected. The possibility of ---. upstream renal arterial stenosis can not be R/O.
Suggest further evaluation.
)
  Paste(MyForm, false)
Return
