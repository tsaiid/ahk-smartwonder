; MS MRI Forms

;; Hotstrings
::mrkok::The anterior cruciate ligament, posterior cruciate ligament, medial collateral ligament, lateral collateral ligament, medial meniscus, and lateral meniscus are preserved.
::ftt::full-thickness tear `
::ptt::partial-thickness tear `

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
