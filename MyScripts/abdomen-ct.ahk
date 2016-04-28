; Abdomen CT Forms

;; General

::act::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return


;; Hotstrings
::lapok::No retroperitoneal or mesenteric lymphadenopathy.
::l-b-ok::In lung and bone windows, the findings are unremarkable.
::l-ok::In lung window, the findings are unremarkable.
::b-ok::In bone window, the findings are unremarkable.
::gbsnac::Presence of gallbladder stones without obvious GB distention or wall thickening.
::actok::The liver, spleen, pancreas, kidneys, and bowels are unremarkable.
::actncok::The liver, spleen, pancreas, kidneys, and bowels are unremarkable. Due to non-contrast study, the evaluation of solid organs is limited.
::rcyst::Some renal cysts in both kidneys, size up to  cm.{Left 4}
::bpleat::Bilateral pleural effusion with atelectasis of lower lungs.
::acthh::A -cm nodule over S of liver, shows discontinuous, nodular, peripheral enhancement in arterial phase, and progressive peripheral enhancement with centripetal fill in in portal venous phase. Hepatic hemangioma is considered.
::mrhh::A -cm nodule over S of liver, shows hyperintensity on T2WI, and the dynamic study shows discontinuous, nodular, peripheral enhancement, with progressive peripheral enhancement with centripetal fill in. Hepatic hemangioma is considered.
::actrn::A -cm nodule over S of liver, shows enhancement in arterial phase, and isodense in portal venous phase, in favor of regenerative nodule.
::actckd::Atrophic change of bilateral kidneys, in favor of chronic kidney disease.

::acthcc::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with arterial and portovenous phases.

Previous abdominal CT: none.

FINDINGS:

Liver: tumor profiles:
number: two
segment, size: S5 and S8 ( 2.5 and 1.4 cm)
enhancement:  hyper- in arterial phase, hypo- in venous/delayed phase
vessel invasion: Nil
cirrhotic change: nil, portosystemic collaterals (-)
comments: in favor of HCCs

Extrahepatic spread: No.
Regional lymphadenopathy: No
Non-regional lymphadenopathy: No

Spleen: unremarkable.
Biliary tree: Unremarkable
Pancreas: Unremarkable

Kidneys and ureters: Unremarkable.

No evident upper abdominal retroperitoneal lymphadenopathy identified.

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::acthccf::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with arterial, portovenous, and equilibrium phases.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actpan::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 30 and 80 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::acttcc::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 and 420 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actl::
  MyForm =
(
** Non-contrast and contrast-enhanced chest and abdominal CT scans.
Scanning range: lower neck to symphysis, 5-mm contiguous scan.
Contrast medium administered: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Indications: R/O lymphoma for staging

Previous chest and abdominal CT: None

Findings:
Presence of enlarged lymph nodes over (>1cm in longest diameter)
1. Above the diaphragm:
   Waldeyer's ring (tonsil): Nil, Yes
   Cervical, supraclavicular, occipital, and pre-auricular: Nil, RT, LT, Bil.
   Infraclavicular: Nil, RT, LT, Bil.
   Axillary and pectoral: Nil, RT, LT, Bil.
   Mediastinal: Nil, Yes
   Hilar: Nil, RT, LT, Bil.
   Total number of region:
2. Below the diaphragm:
   Mesenteric: Nil, Yes
   Paraaortic: Nil, Yes
   Iliac: Nil, RT, LT, Bil.
   Inguinal and femoral: Nil, RT, LT, Bil.
   Total number of region:

Spleen involvement: Nil, Yes
Extranodal involvement: Nil, Yes, organ:
Liver involvement: Nil, Yes
Bone marrow involvement: Nil, Yes
Lung involvement: Nil, Yes

** No significant lesion of the lung, liver, spleen, bowels, pancreas, kidneys and adrenals.

Impression:
Multiple bulky lymphadenopathies, R/O Lymphoma. (Image stage -----, if biopsy proved lymphoma.)
Lymphoma with relapse/ progression/ partial remission/ complete remission.
)
  Paste(MyForm)
Return

; Abd CTA - bleeding
::actcta::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: arterial and venous phases.

Previous abdominal CT: none.

FINDINGS:

No definite bleeder or contrast extravasion identified in this study.
No other apparent focal lesion noted at liver, spleen, pancreas and kidneys
The lower abdomen showed no significant unusual.
No evident bowel dilatation or wall thickening noted.
No intraabdominal lymphadenopathy noted.

IMPRESSION:
No active bleeder found.

SUGGESTION:

)
  Paste(MyForm)
Return

; Abd CT - Non-contrast
::actnc::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
)
  Paste(MyForm)
Return

::actad::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 3-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actcrc::
  MyOrder := CopyOrder()
  MyForm =
(
PROCEDURE: Non-contrast and contrast-enhanced abdominal CT scans.
TECHNIQUE description:
   Scanning range: Liver to symphysis, 5-mm contiguous scan.
   Contrast medium: Yes, 100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Clinical indications: colorectal tumor staging.

Previous similar study reviewed/comparison: Yes. (<date>) | NONE

Findings:

Rectal tumor
Size: [  x  x  cm]

T-stage of the tumor
[T1 (tumor invades the submucosa]]
[T2 (tumor invades the muscularis propria]]
[T3 (tumor invades the perirectal fat]]
[T4a: Tumor penetrates to the surface of the visceral peritoneum]
[T4b: Tumor directly invades or is adherent to other organs or structures ]

Lymph nodes: [No enlarged nodes / number and size of the lymph nodes in the perirectal space as well as along the major pelvic vessels]
N0: No regional lymph node metastasis
N1a: Metastasis in 1 regional lymph node
N1b: Metastasis in 2-3 regional lymph nodes
N1c: Tumor deposit(s) in the subserosa, mesentery, or non-peritonealized pericolic or perirectal tissues without regional nodal metastasis
N2a: Metastasis in 4 to 6 regional lymph nodes
N2b: Metastasis in 7 or more regional lymph nodes

M1a: Metastasis confined to one organ or site (e.g., liver, lung, ovary, non-regional node).
M1b: Metastases in more than one organ/site or the peritoneum.

NOTE: in case of mucinous-type of rectal tumor the involved lymph nodes may
have fluid-like density.

Bony metastases: [None] visible / number and size of any bony metastases
No abnormal findings in the liver, GB, biliary system, pancreas, spleen, and both kidneys.
Under lung window, no definite pulmonary nodules detected from available images

IMPRESSION:
[Rectal /sigmoid ] colon carcinoma
Tentative image staging based on AJCC 7th edition, 2009: T N Mx
)
  Paste(MyForm)
Return

::acts::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Distended the stomach with water and scanned in prone position.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

::actgyn::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Oral contrast medium: Yes.
IV contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with 100 seconds scanning delay.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return
