; Neuro Brain Forms

;; CTN1
::ctn1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of brain was performed with a multi-slice CT scanner:
METHOD: (1) Noncontrast and (2) Post-contrast enhancement
SCAN RANGE: oblique axial plane from the skull base to the vertex with 5-mm continuous scan slice thickness
CONTRAST MEDIUM: IV route, 80 ml, 1 ml/sec.

COMPARISON:
Applicable previous CT of brain: no

FINDINGS:
Presence of skull base artifact with superimpose of bil. frontal base, bil. temporal base, and posterior fossa.

No definite abnormal enhancing mass lesion in the brain noted.

No definite acute intracranial parenchymal hemorrhage or acute epidural or acute subdural hematoma in the brain noted.

The bilateral lateral ventricles showed symmetrical without dilatation.

IMPRESSION:
No remarkable findings on CT.

No definite abnormal enhancing mass lesion in the brain noted.

SUGGESTION:
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; CTN2
::ctn2::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
Noncontrast CT of the brain was performed with a multi-slice CT scanner:
SCAN RANGE: oblique axial plane from the skull base to the vertex with 5-mm continuous scan slice thickness

COMPARISON:
Applicable previous CT of brain: no

FINDINGS:
Presence of motion artifact in this study, film interpretation is limited.

Presence of skull base artifact with superimpose of bil. frontal base, bil. temporal base, and posterior fossa.

Hyperdense cerebral vessels and venous sinuses noted, in favor of recent study with coontrast media.

No definite area of obvious abnormal density in the brain noted.

No definite acute intracranial parenchymal hemorrhage or acute epidural or acute subdural hematoma in the brain noted.

The bilateral lateral ventricles showed symmetrical without dilatation.

No obvious dilatation of intraventricular system.

No obvious fracture of the skull base and the skull.

IMPRESSION:
1. No evident acute intracranial hemorrhage or acute subdural hematoma.
2. Previous brain insult; old lacunar infarcts.
3. No obvious old brain insult.

No remarkable findings on noncontrast CT.

No significant acute findings on noncontrast CT.

No definite acute intracranial parenchymal hemorrhage or acute epidural or acute subdural hematoma in the brain noted.

No obvious fracture of the skull base and the skull.

SUGGESTION:
Suggest clinical correlation and follow up.
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; 1CTA
::1cta::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT angiography of brain was performed with a multi-slice CT scanner:
METHOD: multi thin-slice spiral scanning of arterial and venous phases
SCAN RANGE: axial plane from the skull base to the vertex.
CONTRAST MEDIUM: IV bolus injection, 80ml, rate: 3 ml/sec
IMAGE POST-PROCESSING: done in workstation with multiPlanar reconstruction, maximal intensity projection and volume rendering techinique

CT scan of brain was performed with a multi-slice CT scanner:
METHOD: (1) Noncontrast and (2) Post-contrast enhancement
SCAN RANGE: oblique axial plane from the skull base to the vertex with 5-mm continuous scan slice thickness

Previous CT: no/2008-10-05

FINDINGS:


IMPRESSION:
SUGGESTION:
)
  Paste(MyForm)
Return

;; CT3D
::ct3d::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
Noncontrast CT scan of the face and skull, with thin slice 2 mm, and post reconstruction 3D display.

COMPARISON:
Applicable previous 3D-CT of face: no

FINDINGS:

1. Presence of fracture over anterior/posterior wall of ------- maxillary sinus.
2. Presence of fracture over ---------- wall of right/left/bilateral orbit, with rectus muscle/orbital fat herniation.
3. Presence of fracture over right/left/bilateral zygoma/zygomatic arch.
4. Presence of fracture over --------- mandible.
5. No evidence of fracture of the orbit/cheek.
6. Presence of hematoma over ----------
7. Presence of right/left/bilateral neck emphysema/soft tissue swelling.

On endotracheal tube.

Presence of fracture over bilateral lateral orbital bony wall and orbital floor, bilateral zygoma and zygoma arch.

Presence of displaced fracture over anterior and posterior walls of bilateral maxillary sinuses.

Presence of fracture over maxilla, alveolar process, and teeth rupture.

Presence of fracture over nasal bone and pterygoid process bone.

Presence of displaced fracture over mandible body.

Presence of displaced fracture in the right coronoid process, bilateral condylar head and subluxation or dislocation of bilateral T-M joint.

Hematoma in nasal cavity, bil. ethmoid, bil. sphenoid and bil. maxillary sinus noted.

Presence of bilateral cheek soft tissue swelling, hematoma and subcutaneous emphysema.

Presence of scalp soft tissue swelling and hematoma.

Presence of bilateral periorbital region soft tissue swelling and hematoma.

Presence of bilateral orbital emphysema noted.

IMPRESSION:
As the above description.

SUGGESTION:
Suggest clinical correlation and follow up.
)
  Paste(MyForm)
Return



;; MRICVA
::mricva::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
The MR of the brain performed with Sagittal T1WI (localizer)
Axial T1WI, T2WI, GET2*WI, FLAIR (Fluid Attenuated Inversion Recovery)
Coronal T1WI, T2WI
Diffusion-weighted Imaging (DWI)
And post Gadolinium (0.1 mmol/kg) enhancement with axial and coronal T1 weighted image
Intracranial MRA with 3D TOF and focus on the circle of Willis showed:
[[Intracranial MRA with 3D TOF and focus on the circle of Willis, intracranial MR venography (MRV) showed:]]

Previous MRI of brain: none

Findings:

-----------------------------------
Post-contrast study was not performed due to clinician request.

Becasue this patient couldn't tolerate this examination finally, the Gd-enhanced study was not obtained.

Post-contrast study was not performed due to patient's family refusal.

Post-contrast study was not performed due to impaired renal function of the patient.

No evidence of high signal intensity on DWI and lower apparent diffusion coefficeint suggesting acute ischemia infarction in the brain and brainstem noted.

No evidence of high signal intensity lesion in the brain stem on DWI.

Presence of small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter, with high signal intensity on T2WI, FLAIR, and DWI, and lower apparent diffusion coefficeint (ADC).

Presence of tiny old ischemic infarction involving bil. basal ganglion region.

Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.

No definite abnormal signal intensity tumor mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

The bilateral lateral ventricles showed symmetrical without dilatation.

Post contrast study showed no abnormal enhancing lesion in the brain and no abnormal leptomeningeal enhancement noted.


MRA shows turbulent flow or mild stenosis over intracranial portion of bilateral internal carotid arteries and basilar atery.

Noncontrast intracranial MRA with 3D TOF shows that multiple foci of high grade stenoses over intracranial portion of the internal carotid artery.

MRA shows presence of stenosis noted over the bilateral carotid siphon and supraclinoid internal carotid arteries, and high grade stenosis over main trunk of right side middle cerebral artery, and with paucity of the branches of the right side middle cerebral artery noted.

MRA shows--
Presence of normal variation of fenestration of the proximal basilar artery. (Hx: 13776391, ac: 65343630)
(Hx: 14770377, Ac: 69245411)

CTA shows noraml variation of A1 of left anterior cerebral artery fenestration. (Hx: 9481974, ac: 99785929)

Normal variation of right fetal posterior cerebral artery and trifurcation of anterior cerebral artery. (Hx: 3577988, ac: 66986943)

MRA shows normal variation of right persistent trigeminal artery. (HX: 5581748, ac: 57139640) (Hx: 15417944, Ac: 75376134)

Presence of hypoplasia of A1 portion of right/left anterior cerebral artery.

Normal variant of left vertebral artery directly arising from the aortic arch.

Presence of normal variation of right/left /bilateral fetal posterior cerebral artery.

Incidental finding of right side fetal type posterior cerebral artery (PCA) from right internal carotid artery (ICA) with hypoplasia change at P1 segment of right PCA noted.

Presence of long segment hypoplasia or narrowing of left vertebral artery of the neck portion.

Presence of mild asymmetry of bilateral vertebral arteries, and more prominence over the right side, and patent flow of bilateral vertebral arteries noted, normal variation in favor.

Presence of normal variant of common origin of left vertebral artery and left common carotid artery, so called "left brachiocephalic trunk".

MRA shows that no evidence of aneurysm or arterial-venous malformation (AVM) noted near the circle of Willis regions.

MRA shows that no evidence of occlusion or high grade stenosis over intracranial portion of the internal carotid artery and basilar artery, and main trunk of the bilateral anterior cerebral arteries and middle cerebral arteries.

MRA shows presence of segmental occlusion or high grade stenosis of the intracranial portion of basilar artery.
MRA shows small diameter of right/left intracranial vertebral artery.
MRA shows nonvisualization of right/left intracranial vertebral artery.

MRA did not show the information of the vertebral artery due to the limited FOV (field of view) of this MRA study noted.

S/P embolization of left vertebral artery aneurysm anterior to the medulla with susceptability artifact, possibly from coil embolization. However, whether embolization of the aneurysm was completed or not cannot be evaluated because of limited FOV (field of view) of this MRA study which cannot show the full information of vertebral artery. Please correlate with prior studies to check the status of the left vertebral artery aneurysm.

MRV shows that no evidence of venous thrombosis involving the intracranial venous sinuses noted.

IMPRESSION:
Essentially negative finding.
No remarkable significant intracranial findings.

No evidence of high signal intensity on DWI suggesting acute or recent ischemia infarction in the brain noted.

No evidence of acute ischemic infarction in this study.
Old lacunar infarct. Old ischemic infarct.
Previous brain insult; old lacunar infarcts.

Small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter.

SUGGESTION:
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; MRICVA-1
::mricva-1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
The MR of the brain performed with Sagittal T1WI (localizer)
Axial T1WI, T2WI, GET2*WI, FLAIR (Fluid Attenuated Inversion Recovery)
Coronal T1WI, T2WI
Diffusion-weighted Imaging (DWI)
And post Gadolinium (0.1 mmol/kg) enhancement with axial and coronal T1 weighted image
Intracranial MRA with 3D TOF and focus on the circle of Willis showed:

COMPARISON:
Applicable previous MRI of brain: no
Applicable previous CT of brain: no

FINDINGS:

No evidence of hign signal intensity lesion in the brain stem on DWI suggesting acute or recent ischemia infarction.

Presence of several small old ischemia infarction noted including the pons, bil. basal ganglion and bil. thalamus region noted.

Presence of tiny old ischemic infarction or previous brain insult involving bil. basal ganglion, bil. corona radiata and bil. thalami regions.

Presence of brain tissue loss change involving right temporal, right parietal, and left frontal regions, with compensatory dilatation of left lateral ventricle, in favor of previous brain insult, such as old ischemic infarction.

Presence of small old intracranial hemorrhage (ICH) hemosiderin noted including the pons, bil. basal ganglion and bil. thalamus region and bilateral cerebral and cerebellar hemispheres noted. From the above image finding and clinical history, more in favor of due to the hypertensive ICH. DDx:amyloid angiopathy.

Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemic due to aging process and chronic hypertension.

Presence of mild/moderate/severe periventricular hyperintensity on T2WI noted, the subcortical arteriosclerotic encephalopathy considered.

Mild dilatation of intraventricular system with widening of subarachnoid space of bilateral cerebral hemispheres, in favor of aging process and mild brain atrophy.

No definite abnormal signal intensity mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

Post contrast study showed no abnormal enhancing lesion in the brain and no abnormal leptomeningeal enhancement noted.

Imp:
No evidence of hign signal intensity lesion in the brain stem on DWI suggesting acute or recent ischemia infarction.
Others as the above discription.


--------------------------------------------------------------------------
The MR of the brain performed with Sagittal T1WI (localizer)
Axial T1WI, T2WI, GET2*WI, FLAIR (Fluid Attenuated Inversion Recovery)
Coronal T1WI, T2WI
Diffusion-weighted Imaging (DWI)
And post Gadolinium enhancement with axial and coronal T1 weighted image showed:
MRA of the brain with 3D TOF focus on circle of Willis:

-----------------------------------
No evidence of hign signal intensity lesion in the brain stem on DWI.

Presence of small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter, with hign signal intensity on T2WI, FLAIR, and DWI, and lower apparent diffusion coefficeint (ADC).

Presence of tiny old ischemic infarction involving bil. basal ganglion region.

Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemic due to aging process and chronic hypertension.

The bilateral lateral ventricles showed symmetrical without dilatation.

MRA show that no evidence of occlusion or high grade stenosis over intracranial portion of the internal carotid artery and vertebral basilar artery, and main trunk of the bilateral anterior cerebral arteries and middle cerebral arteries.

No definite abnormal signal intensity tumor mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

IMPRESSION:
1. Previous brain insult; old infarcts, old ICH.
2. No definite tumor mass lesion in the brain.
Small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter.

SUGGESTION:
Suggest clinical correlation and follow up.
)
  Paste(MyForm)
Return

;; MRB
::mrb::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
The MRI of the brain performed with a 1.5-T scanner:
METHOD: Sagittal T1WI (localizer), Axial T1WI, T2WI, GET2*WI,
FLAIR (Fluid Attenuated Inversion Recovery), Coronal T1WI, T2WI
Diffusion-weighted Imaging (DWI), post Gadolinium enhancement with axial and coronal T1 weighted image showed:
SCAN RANGE: from the skull base to the vertex
CONTRAST MEDIUM: IV route, 0.1mmol/kg

The MRI of the brain performed with a 3-T scanner:
METHOD: Sagittal T1WI (localizer)
Axial T1WI, T2WI, T2*GRE, FLAIR (Fluid Attenuated Inversion Recovery), DWI (Diffusion-weighted Imaging)
Coronal T1WI, T2WI
Gd-enhanced 3D-SPACE and 3D-MPRAGE T1WI with fat suppression
SCAN RANGE: From the skull base to the vertex
CONTRAST MEDIUM: IV route, 0.1mmol/kg, 1ml/sec.

COMPARISON:
Applicable previous MRI of brain: no
Applicable previous CT of brain: no

FINDINGS:

No definite abnormal signal intensity mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

The bilateral lateral ventricles showed symmetrical without dilatation.

Post contrast study showed no abnormal enhancing lesion in the brain and no abnormal intracranial leptomeningeal enhancement noted.

IMPRESSION:
No significant intracranial finding
SUGGESTION:
)
  Paste(MyForm)
Return
