; MS MRI Forms

;; Hotstrings
::mrkok::The anterior cruciate ligament, posterior cruciate ligament, medial collateral ligament, lateral collateral ligament, medial meniscus, and lateral meniscus, quadricep tendon and patellar tendon are preserved.
::mrarok::No arthrographic evidence of full-thickness tear of rotator cuff or adhesive capsulitis.
::ftt::full-thickness tear `
::ptt::partial-thickness tear `
::je::joint effusion
::bme::bone marrow edema
::mpp::mediopatellar plica
::mppok::Presence of mediopatellar plica. The adjacent patellar and femoral cartilages are normal.
::cmp1::focal areas of hyperintensity on PDWI with normal contour
::cmp2::blister-like swelling/fraying of articular cartilage extending to surface
::cmp3::partial thickness cartilage loss with focal ulceration
::cmp4::full thickness cartilage loss with underlying bone reactive changes
::aclsp::Edematous change and increased signal intensity over the anterior cruciate ligament (ACL) with preserved fiber continuity. Sprain is considered.
::pclsp::Edematous change and increased signal intensity over the posterior cruciate ligament (PCL) with preserved fiber continuity. Sprain is considered.
::aclct::Edematous change and increased signal intensity over the anterior cruciate ligament (ACL) with incontinuous fiber. Complete tear is considered.
::pclct::Edematous change and increased signal intensity over the posterior cruciate ligament (PCL) with incontinuous fiber. Complete tear is considered.
::aclpt::Edematous change and increased signal intensity over the anterior cruciate ligament (ACL) with focally incontinuous fiber. Partial tear is considered.
::pclpt::Edematous change and increased signal intensity over the posterior cruciate ligament (PCL) with focally incontinuous fiber. Partial tear is considered.
::mrsab::Presence of Hill Sachs deformity manifesting an impaction lesion of the posterolateral aspect of the humeral head, and under MR-arthrogram, the anteroinferior labrum is frayed and absence that considered Bankart lesion, the findings c/w secondary to anterior glenohumeral dislocation.

;; MRI of Knee
::mrk::
  MyOrder := CopyOrder()
  TheSide := GetSideStr(MyOrder)
  MyForm =
(
INDICATION: %MyOrder%

MRI of %TheSide% knee in
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
