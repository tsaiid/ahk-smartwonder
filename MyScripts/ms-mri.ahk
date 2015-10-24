; MS MRI Forms

;; Hotstrings
::mrkok::The anterior cruciate ligament, posterior cruciate ligament, medial collateral ligament, lateral collateral ligament, medial meniscus, and lateral meniscus, quadricep tendon and patellar tendon are preserved.
::mrarok::No arthrographic evidence of full-thickness tear of rotator cuff or adhesive capsulitis.
::ftt::full-thickness tear `
::ptt::partial-thickness tear `
::bme::bone marrow edema

;; MRI of Knee
::mrk::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of _ knee in
sagittal localizer: SE T1WI
oblique coronal plane:  fat-suppressed FSE PDWI
oblique axial plane: fat-suppressed FSE PDWI
oblique sagittal plane: SE PDWI, FSE T2WI shows:

PREVIOUS MRI of knee: none.

FINDINGS:

IMPRESSIONS:
)
  Paste(MyForm)
Return

; MRI of shoulder
::mrsa::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of right/left shoulder in :
axial plane : SE T1WI, FSE PDWI, Fat Sat.
oblique coronal plane : FSE PDWI, FSE T2WI, PDWI with fat satuation
oblique sagittal plane : SE T1WI, FSE PDWI with fat satuation
with MR arthrography in oblique coronal plane:

PREVIOUS MRI of shoulder: none.

FINDINGS:

IMPRESSIONS:
)
  Paste(MyForm)
Return

; MRI of wrist
::mrwr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of right/left wrist in
coronal plane: SE T1WI, fat-suppressed FSE PDWI, post contrast T1WI
axial plane: SE T1WI, fat-suppressed FSE T2WI, post contrast T1WI
sagittal plane: SE T1WI, fat-suppressed FSE PDWI shows:

PREVIOUS MRI of wrist: none.

FINDINGS:

IMPRESSIONS:
)
  Paste(MyForm)
Return
