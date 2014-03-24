; Abdomen CT Forms

;; General

:O:act::
  MyForm =
(
INDICATION:

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
:O:lap-ok::- No retroperitoneal or mesenteric lymphadenopathy.
:O:l-b-ok::- In lung and bone windows, the findings are unremarkable.
:O:l-ok::- In lung window, the findings are unremarkable.
:O:b-ok::- In bone window, the findings are unremarkable.

:O:act-hcc::
  MyForm =
(
INDICATION:

METHOD:
Non-contrast and contrast-enhanced abdominal CT scans.
Scanning range: Liver to symphysis, 5-mm contiguous scan.
Contrast medium: Yes, 80-100 ml, 1-2 ml/sec, with arterial and portovenous phases.

Previous abdominal CT: none.

FINDINGS:

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

:O:act-l::
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
