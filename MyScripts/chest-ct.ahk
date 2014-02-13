; Chest CT Forms

;; Lung Routine
:O:ct-lr::
ClipSave:=ClipboardAll ; store clipboard data
MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

METHOD:
  - (1) HRCT (2) Noncontrast survey (3) contrast enhancement were performed
  - Scan range: lower neck to adrenal gland

INDICATION:

COMPARISON:
Applicable previous CT of chest: no
Applicable previous chest radiography:

FINDINGS:
(1) Lung nodule or mass: negative
(2) Lung parenchyma and airway: not unusual for age
(3) Mediastinum: not unusual
(4) Lymph node enlargement > 1 cm: none for age
(5) Pleura: not unusual for age
(6) Pericardium and heart: not unusual for age
(7) Aorta and pulmonary artery: not unusual  for age
(8) Chest wall and bony structure: not unusual for age
(9) Upper abdomen and adrenals: not unusual for age

IMPRESSION:

SUGGESTION:

)
Clipboard := MyForm
Loop,
{
  Sleep, 100
  If (Clipboard = MyForm)
    Break
}
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return

;; NCSD
:O:ct-ncsd::
ClipSave:=ClipboardAll ; store clipboard data
MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

METHOD:
  - (1) HRCT (2) Noncontrast survey
  - Scan range: lower neck to adrenal gland

INDICATION:

COMPARISON:
Applicable previous CT of chest: no
Applicable previous chest radiography:

FINDINGS:
1. Lung and large airways: no pulmonary nodules.
2. Pleura: no visible nodularity or pleural thickening.
3. Great vessels: within normal limits.
4. Heart: within normal limits.
5. Mediastinum and hila: no LNs > 1 cm.
6. Chest Wall and low neck: within normal limits.
7. Abdomen: within normal limits in visualized range.

IMPRESSION:

SUGGESTION:

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
*N.P. means no particular findings adjusted for patient's age.
*N.A. means complete evaluation is not available due to absence of contrast enhancement however, from the limited information, there is no evident lesion.
)
Clipboard := MyForm
Loop,
{
  Sleep, 100
  If (Clipboard = MyForm)
    Break
}
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return

;; CTA
:O:ct-cta::
ClipSave:=ClipboardAll ; store clipboard data
MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

METHOD:
  - (1) non-contrast (2) contrast enhancement for CT angiography
  - Scan range: target vessel
  - Contrast medium: IV route, rate: as fast as IV route allowed

INDICATION:

COMPARISON:
Applicable previous CT of chest: no
Applicable previous chest radiography:

FINDINGS:
(1) AORTA: not unusual for age
(2) PULMONARY ARTERY: Not definite filling defect
(3) OTHER VESSELS: Not unusual for age
(4) OTHER THORACIC ORGANS:
(5) ABDOMIAL ORGANS SCANNED:

IMPRESSION:

SUGGESTION:
)
Clipboard := MyForm
Loop,
{
  Sleep, 100
  If (Clipboard = MyForm)
    Break
}
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return

;; Congenital Heart Disease
:O:cct-chd::
ClipSave:=ClipboardAll ; store clipboard data
MyForm =
( %
MDCT FOR CONGENITAL HEART DISEASE PERFORMED WITH 64-SLICE CT SCANNER
Total DLP:
INDICATION:

COMPARISON:
Applicable previous CT of chest: no

PROTOCOL:
  - EKG gating, prospective (65-85%)
  - EKG gating, retrospective
  - Delay image:
    1. Time: 10 min; Low dose: 80kV
    2. EKG gating, retrospective

PARAMETERS:
  - Image quality: good/fair/poor
  - Imaging processing: MPR and 3D-VRT

CARDIOVASCULAR FINDINGS:
  . Situs: solitus
  . Atrium: Not unusual
  . Ventricle: Not unusual.
  . Aorta: not usuual, AAo diameter:  mm; DAo: mm.
  . Pulmonary trunk: not unusual, trunk diameter: mm; RPA: mm; LPA: mm.
  . Collateral to lung: PDA (-); MAPCA(-).
  . Pulmonary vein: Not unusual
  . SVC/IVC/azygos vein : Not unusual

MEASUREMENT:
  . Ascending Ao:  mm.
  . Descending Ao:  mm.
  . Pulmonary trunk:  mm.
  . Right pulmonary artery:  mm.
  . Left pulmonary artery:  mm.

OTHER FINDINGS:
  . Trachea and bronchus: Not unusual
  . Lung parenchyma and plerua: No unusual
  . Pleural: Not unusual
  . Chest wall: No unusual
  . Presence of thymus gland: (+)
  . Abdomen: Not unusual

IMPRESSION:
)
Clipboard := MyForm
Loop,
{
  Sleep, 100
  If (Clipboard = MyForm)
    Break
}
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return