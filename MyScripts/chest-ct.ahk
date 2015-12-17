; Chest CT Forms

;; Hotstrings
::6mcct::Follow up chest CT scan 6 months later.
::csono::Suggest correlate with sonography.
::tacal::Atherosclerotic change and calcification of aortic wall.
::accal::Atherosclerotic change of the aorta and coronary arteries.

;; Lung Routine
::cctlr::
  MyOrder := CopyOrder()
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

METHOD:
  - (1) HRCT (2) Noncontrast survey (3) contrast enhancement were performed
  - Scan range: lower neck to adrenal gland

INDICATION: %MyOrder%

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
1. Lung nodule or mass: negative
2. Lung parenchyma and airway: not unusual for age
3. Mediastinum: not unusual
4. Lymph node enlargement > 1 cm: none for age
5. Pleura: not unusual for age
6. Pericardium and heart: not unusual for age
7. Aorta and pulmonary artery: not unusual for age
8. Chest wall and bony structure: not unusual for age
9. Upper abdomen and adrenals: not unusual for age

IMPRESSION:

SUGGESTION:

)
  Paste(MyForm)
Return

;; NCSD
::cctncsd::
  MyOrder := CopyOrder()
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

METHOD:
  - (1) HRCT (2) Noncontrast survey
  - Scan range: lower neck to adrenal gland

INDICATION: %MyOrder%

COMPARISON:
Applicable previous CT of chest: no

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
)
  Paste(MyForm)
Return

;; NCLD
::cctncld::
  MyOrder := CopyOrder()
  MyForm =
(
Report of ultra-low dose, high resolution non-contrast CT scan for screening pulmonary nodule.
Scanner: Multi-detector CT scanner.
Scan range: thoracic inlet to diaphragm.
Reconstruction: axial and coronal reconstruction.

INDICATION: %MyOrder%

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
1. Lung: no remarkable nodular lesions (>0.4 cm).
2. Mediastinum: no lymph node enlargement > 1 cm.
3. Heart:
- Size: normal.
- Coronary artery calcification: no or minimal.
4. Great vessels: normal diameter.
5. Pleura: N.A.
6. Chest wall and spine: N.A.
7. Upper abdomen: N.A.

--------------------
CONCLUSION:
(1) no remarkable nodular lesions in bilateral lungs.
(2) no or minimal coronary artery calcification.

__________________________________________________
@N.P. means no particular findings adjusted for patient's age.
@N.A. means complete evaluation is not available due to absence of contrast enhancement however, from the limited information, there is no evident lesion.
)
  Paste(MyForm)
Return

;; CTA
::cctcta::
  MyOrder := CopyOrder()
  MyForm =
(
CT scan of the thorax was performed with a multi-slice CT scanner.

METHOD:
  - (1) non-contrast (2) contrast enhancement for CT angiography
  - Scan range: target vessel
  - Contrast medium: IV route, rate: as fast as IV route allowed

INDICATION: %MyOrder%

COMPARISON:
Applicable previous CT of chest: no

FINDINGS:
1. AORTA: not unusual for age
2. PULMONARY ARTERY: Not definite filling defect
3. OTHER VESSELS: Not unusual for age
4. OTHER THORACIC ORGANS:
5. ABDOMIAL ORGANS SCANNED:

IMPRESSION:

SUGGESTION:
)
  Paste(MyForm)
Return

;; Congenital Heart Disease
::cctchd::
  MyOrder := CopyOrder()
  MyForm =
(
MDCT FOR CONGENITAL HEART DISEASE PERFORMED WITH 64-SLICE CT SCANNER
Total DLP:
INDICATION: %MyOrder%

COMPARISON:
Applicable previous CT of chest: no

PROTOCOL:
  - EKG gating, prospective (65-85`%)
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
  Paste(MyForm)
Return

;; Lung cancer, staging
::cctlcs::
  MyOrder := CopyOrder()
  MyForm =
(
CT scan of the thorax was performed with a MDCT scanner.
METHOD: (1) HRCT (2) NCCT (3) CECT were performed
SCAN RANGE: lower neck to adrenal gland

INDICATION: %MyOrder%

PREVIOUS CHEST CT SCAN: Not available.

FINDINGS:
A. Tumor Profile
(1) Tumor Location:
(2) Tumor Size & Invasion (T):
--- Greatest Diamter (cm):
--- Tumor <= 2cm (T1a)
--- 2cm < Tumor <= 3cm (T1b)
--- 3cm < Tumor <= 5cm (T2a)
--- 5cm < Tumor <= 7cm (T2b)
--- Tumor > 7cm (T3)

--- Surrounded by lung or visceral pleura (T1)
--- Invades visceral pleura (T2)
--- Invades chest wall, diaphragm, phrenic nerve, mediasinal pleura, parietal pericardium (T3)
--- Invades mediastinum, heart, great vessels, trachea, recurrent laryngeal nerve, esophagus, vertebral body, carina (T4)

--- Not more proximal than lobar bronchus (T1)
--- Involves main bronchus, >= 2cm from carina (T2)
--- Tumor in the main bronchus( < 2cm from carina) (T3)

--- Focal atelectasis or obstructive pneumonitis to hilum (T2)
--- Atelectasis of entire lung (T3)

--- Separate tumor nodule(s) in same lobe (T3)
--- Separate tumor nodule(s) in a different lobe (T4)

(3) Regional Lymph Nodes (N)
--- No regional lymph node metastasis (N0)
--- Metastasis in ipsilateral peribronchial and/or ipsilateral hilar lymph nodes and intrapulmonary nodes, including involvement by direct extension (N1)
--- Metastasis in ipsilateral mediastinal and/or subcarinal lymph node(s) (N2)
--- Metastasis in contralateral mediastinal, contralateral hilar, ipsilateral or contralateral scalene, or supraclavicular lymph node(s) (N3)

(4) Distant Metastasis (M)
--- M0: no evidence in the scanned range (M0)
--- Separate tumor nodule(s) in a contralateral lobe (M1a)
--- Tumor with pleural nodules or malignant pleural (or pericardial) effusion (M1a)
--- Distant metastasis (M1b) at *
--- Uncertain lesion in the scanned range, which could be metastatic lesion or not, and    require further study (Mx)

B. Other Findings


IMPRESSION:
(1) Lung cancer of , cTNM (AJCC 2009, 7th ed.) if proved

SUGGESTION:
)
  Paste(MyForm)
Return

;; Esophageal cancer, staging
::cctecs::
  MyOrder := CopyOrder()
  MyForm =
(
CT scan of the thorax was performed with a MDCT scanner.

PROTOCOL:
METHOD: (1) HRCT (2) NCCT (3) CECT were performed
SCAN RANGE: lower neck to adrenal gland

INDICATION: %MyOrder%

Date of previous chest CT scan: YYYY/MM/DD

FINDINGS:
1. TUMOR LOCATION
--- Cervical segment (hypopharynx to sternal notch)
--- Upper third of thoracic segment (sternal notch to azygos vein)
--- Middle third of thoracic segment (azygos vein to inferior pulmonary vein)
--- Lower third of thoracic segment (inferior pulmonary vein to esophagogastric junction)
2. TUMOR SIZE
--- Measurable: Length________ cm , Max thickness ________ cm
--- Non-measurable
3. TUMOR INVASION
--- No or Equivocal
--- Yes, if yes:
T3: Advantitia(+)
T4a: pleura(+), pericardium(+), diaphragm(+), peritoneum(+),
T4b: aortic wall(+), carina(+), left atrial wall (+), vertebral body(+),
posterior wall of trachea(+), posterior wall of main bronchus(+),
4. REGIONAL NODAL METASTASIS
--- No or Equivocal
--- Yes, if yes
---Number of suspicious lymph node: 1-2 (N1), 3-6 (N2), or >7 (N3)
--- Location (specified as below):
Lower cervical(+), supraclavicular(+), and sternal notch (+),
Right upper Paratracheal (+), Left upper paratracheal (+),
Right lower paratracheal (+), Left lower paratracheal (+),
Prevascular (+), Retrotracheal (+),
Subaortic (A-P window) (+), Paraaortic (ascending aorta or phrenic) (+),
Subcarinal (+), Paraesophageal(+),
Right Hilar (+), Left Hilar (+),

Others:
5. DISTANT METASTASIS (IN THIS STUDY)
--- No or Equivocal
--- Yes, location: _________
6. OTHER FINDINGS

IMPRESSION:
(1) Esophageal CA of , cTNM. (AJCC 2009, 7th ed.)
(2)
(3)

SUGGESTION:
)
  Paste(MyForm)
Return
