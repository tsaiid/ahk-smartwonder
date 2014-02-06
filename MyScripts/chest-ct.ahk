; Chest CT Forms

;; Lung Routine
:O:ct-lr::
ClipSave:=ClipboardAll ; store clipboard data
Clipboard=
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
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return

;; NCSD
:O:ct-ncsd::
ClipSave:=ClipboardAll ; store clipboard data
Clipboard=
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
-------------------------------------------------------
IMPRESSION:

SUGGESTION:

*PS. The evaluation is limited especially for solid organs and vascular structure due to absence of contrast enhancement.
*N.P. means no particular findings adjusted for patient's age.
*N.A. means complete evaluation is not available due to absence of contrast enhancement however, from the limited information, there is no evident lesion.
)
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return
