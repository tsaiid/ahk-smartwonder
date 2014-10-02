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
Presence of beam-hardening skull base artifact with superimpose of bil. frontal base, bil. temporal base, and posterior fossa.

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

Presence of beam-hardening skull base artifact with superimpose of bil. frontal base, bil. temporal base, and posterior fossa.

No definite area of obvious abnormal density in the brain noted.

No definite acute intracranial parenchymal hemorrhage or acute epidural or acute subdural hematoma in the brain noted.

The bilateral lateral ventricles showed symmetrical without dilatation.

No obvious dilatation of intraventricular system.

IMPRESSION:
No remarkable findings on noncontrast CT.

No significant acute findings on noncontrast CT.

No definite acute intracranial parenchymal hemorrhage or acute epidural or acute subdural hematoma in the brain noted.

SUGGESTION:
Suggest clinical correlation and follow up.
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; srCTN1
::srctn1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
Multi-slice CT scanner with (1) non-contrast and (2) contrast-enhanced
scanning in axial plane from skull base to vertex with 4 to 5-mm-thick contiguous slices;
Contrast medium: intravenous route, 60 mL in volume (adjusted according to body weight); injection rate 1.0 mL/sec

COMPARISON:
Applicable previous CT of brain: none
Applicable previous MRI of brain: none

FINDINGS:

*Cerebral lobes: normal
*Basal ganglia and thalami: normal
*White matter tracts: normal

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

*Visualized vascular system: normal / atherosclerotic change with vessel wall calcifications
*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*Others: none


IMPRESSION:
No evident acute intracranial hemorrhage
No significant intracranial finding
No evident brain metastasis
)
  Paste(MyForm)
Return

;; srCTN2
::srctn2::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
Multi-slice CT scanner without contrast medium in axial plane from skull base to vertex with 4 to 5-mm-thick contiguous slices

COMPARISON:
Applicable previous CT of brain: none
Applicable previous MRI of brain: none

FINDINGS:

*Cerebral lobes: normal
*Basal ganglia and thalami: normal
*White matter tracts: normal

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

*Visualized vascular system: normal / atherosclerotic change with vessel wall calcifications
*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*Others: none


IMPRESSION:
No evident acute intracranial hemorrhage
No significant intracranial finding
)
  Paste(MyForm)
Return

;; 1CTA
::1cta::
  MyOrder := CopyOrder()
  MyForm =
(
CT angiography of brain was performed with a multi-slice CT scanner:
METHOD: multi thin-slice spiral scanning of arterial and venous phases
SCAN RANGE: axial plane from the skull base to the vertex.
CONTRAST MEDIUM: IV bolus injection, 80ml, rate: 3 ml/sec
IMAGE POST-PROCESSING: done in workstation with multiPlanar reconstruction, maximal intensity projection and volume rendering techinique

CT scan of brain was performed with a multi-slice CT scanner:
METHOD: (1) Noncontrast and (2) Post-contrast enhancement
SCAN RANGE: oblique axial plane from the skull base to the vertex with 5-mm continuous scan slice thickness

INDICATION: %MyOrder%

Previous CT: no/2008-10-05

FINDINGS:


IMPRESSION:
SUGGESTION:
)
  Paste(MyForm)
Return

;; srCTABrain
::srctabrain::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
Multi-slice CT scanner with
(1) Non-contrast scanning in axial plane from skull base to vertex with 4 to 5-mm-thick contiguous slices.
(2) Bolus injection of contrast medium and thin-slice scanning from skull base to vertex in arterial and venous phases.
(3) Contrast-enhanced scanning in axial plane from skull base to vertex with 4 to 5-mm-thick contiguous slices.
(4) Image post-processing in the workstation with multiplanar reconstruction (MPR), maximal intensity projection (MIP), and volume rendering techinique (VRT)
Contrast medium: intravenous route, 80 mL in volume (adjusted according to body weight); injection rate 3.5 mL/sec


COMPARISON:
Applicable previous digital subtraction angiography: none
Applicable previous CT angiography of brain: none
Applicable previous MR angiography of brain: none

FINDINGS:

*Anatomy

Distal internal carotid artery (ICA): normal
Anterior cerebral artery complex (ACA): normal
Middle cerebral artery complex (MCA): normal
Vertebral artery (VA), V3 & V4 segments: normal
Posterior inferior cerebellar artery (PICA): normal
Basilar artery (BA): normal
Anterior inferior cerebellar artery (AICA): normal
Superior cerebellar artery (SCA): normal
Posterior cerebral artery (PCA): normal

*Pathology

Aneurysm:
  size  mm x  mm
  type: saccular
  artery of origin: anterior communicating artery / junction of distal ICA and posterior communicating artery / MCA bifurcation
  neck dimension: 2 mm
  dome direction projected: superior
  thrombosis: none

Aneurysm follow-up:
  previous intervention: surgical clipping / endovascular embolization
  artery of origin: anterior communicating artery / junction of distal ICA and posterior communicating artery / MCA bifurcation
  residual or recurrent sac: none

Vascular malformation:
  type: pial
  location: right frontal lobe
  nidus size:  mm x  mm x  mm
  arterial feeders: MCA
  associated aneurysms: none

Arteriovenous fistula:
  type: direct (traumatic) / indirect (dural)
  location: right cavernous sinus
  arterial feeders: ICA
  drainage veins:

*Developmental variants: none / fetal origin posterior cerebral artery / hypoplasia of A1 segment of ACA

*Cerebral lobes: normal
*Basal ganglia and thalami: normal
*White matter tracts: normal

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*Others: none


IMPRESSION:
Aneurysm rupture
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

;; srCT3D
::srct3d::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
Multi-slice CT scanner;
Non-contrast axial contiguous scanning of face in bone algorithm with coronal and 3D reconstruction images

COMPARISON:
Applicable previous CT of face: none

FINDINGS:

*Facial bones, right side

Frontal bone: normal / fracture, frontal sinus involved / spared
Ethmoid bone: normal / fracture
Bony orbit: normal / fracture of lateral wall, medial wall, orbital floor
Zygoma: normal / fracture of zygomatic arch and zygomaticofrontal suture
Maxilla / Maxillary sinus: normal / fracture of anterior and posterolateral wall
Pterygoid plates: normal / fracture


*Facial bones, left side

Frontal bone: normal / fracture, frontal sinus involved / spared
Ethmoid bone: normal / fracture
Bony orbit: normal / fracture of lateral wall, medial wall, orbital floor
Zygoma: normal / fracture of zygomatic arch and zygomaticofrontal suture
Maxilla / Maxillary sinus: normal / fracture of anterior and posterolateral wall
Pterygoid plates: normal / fracture

*Mandible: normal
*Nasal bone, septum and nasal cavity: normal
*Sphenoid bones: normal
*Temporal bones: normal
*Parietal bones: normal
*Occipital bones: normal

*Hematoma: none / paranasal sinuses / nasal cavity / periorbital region / scalp / cheek

*Others: none


IMPRESSION:
Multiple facial bone fracture, left side
)
  Paste(MyForm)
Return

;; srCTANec
::srctanec::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
Multi-slice CT scanner with
(1) Non-contrast scanning in axial plane from aortic arch to skull base with 4 to 5-mm-thick contiguous slices.
(2) Bolus injection of contrast medium and thin-slice scanning from aortic arch to skull base in arterial and venous phases.
(3) Image post-processing in the workstation with multiplanar reconstruction (MPR), maximal intensity projection (MIP), and volume rendering techinique (VRT)
Contrast medium: intravenous route, 80 mL in volume (adjusted according to body weight); injection rate 3.5 mL/sec


COMPARISON:
Applicable previous digital subtraction angiography: none
Applicable previous CT angiography of brain: none
Applicable previous MR angiography of brain: none

FINDINGS:

*Anatomy

Aortic arch: normal
Brachiocephalic trunk: normal
Common carotid artery, right: normal
Common carotid artery, left: normal
Internal carotid artery, right: normal
Internal carotid artery, left: normal
External carotid artery, right: normal
External carotid artery, left: normal
Subclavian artery, right: normal
Subclavian artery, left: normal
Vertebral artery, right: normal
Vertebral artery, left: normal


*Pathology

Aneurysm: none
Arteriovenous fistula: none

*Developmental variants: none / hypoplasia of right vertebral artery / common origin of brachiocephalic trunk and left common carotid artery

*Others: none


IMPRESSION:
carotid stenosis
)
  Paste(MyForm)
Return

;; MRICVA
::mricva::
  MyOrder := CopyOrder()
  MyForm =
(
Indication: %MyOrder%

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

No evidence of high signal intensity on DWI suggesting acute ischemia infarction in the brain and brainstem noted.

No evidence of high signal intensity lesion in the brain stem on DWI.

Presence of small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter, with high signal intensity on T2WI, FLAIR, and DWI, and lower apparent diffusion coefficeint (ADC).

Presence of tiny old ischemic infarction involving bil. basal ganglion region.

Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.

No definite abnormal signal intensity tumor mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

The bilateral lateral ventricles showed symmetrical without dilatation.

Post contrast study showed no abnormal enhancing lesion in the brain and no abnormal leptomeningeal enhancement noted.


MRA shows turbulent flow or mild stenosis over intracranial portion of bilateral internal carotid arteries and basilar atery.

MRA shows presence of stenosis noted over the bilateral carotid siphon and supraclinoid internal carotid arteries, and high grade stenosis over main trunk of right side middle cerebral artery, and with paucity of the branches of the right side middle cerebral artery noted.

MRA shows--
Presence of normal variation of fenestration of the proximal basilar artery. (Hx: 13776391, ac: 65343630)

Presence of hypoplasia of A1 portion of right/left anterior cerebral artery.

Normal variant of left vertebral artery directly arising from the aortic arch.

Presence of normal variation of right/left /bilateral fetal posterior cerebral artery.

Incidental finding of right side fetal type posterior cerebral artery (PCA) from right internal carotid artery (ICA) with hypoplasia change at P1 segment of right PCA noted.

Presence of long segment hypoplasia or narrowing of left vertebral artery of the neck portion.

Presence of mild asymmetry of bilateral vertebral arteries, and more prominence over the right side, and patent flow of bilateral vertebral arteries noted, normal variation in favor.

Presence of normal variant of common origin of left vertebral artery and left common carotid artery, so called "left brachiocephalic trunk".

MRA shows that no evidence of aneurysm or arterial-venous malformation (AVM) noted near the circle of Willis regions.

MRA shows that no evidence of occlusion or high grade stenosis over intracranial portion of the internal carotid artery and basilar artery, and main trunk of the bilateral anterior cerebral arteries and middle cerebral arteries.

MRA did not show the information of the vertebral artery due to the limited FOV (field of view) of this MRA study noted.

S/P embolization of left vertebral artery aneurysm anterior to the medulla with susceptability artifact, possibly from coil embolization. However, whether embolization of the aneurysm was completed or not cannot be evaluated because of limited FOV (field of view) of this MRA study which cannot show the full information of vertebral artery. Please correlate with prior studies to check the status of the left vertebral artery aneurysm.

MRV shows that no evidence of venous thrombosis involving the intracranial venous sinuses noted.

IMPRESSION:
No evidence of high signal intensity on DWI suggesting acute or recent ischemia infarction in the brain noted.
Small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter.
SUGGESTION:
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; srMRICVA
::srmricva::
  MyOrder := CopyOrder()
  MyForm =
(
Indication: %MyOrder%

TECHNIQUE:
1.5 Tesla scanner
Sagittal T1WI (localizer), Axial T1WI, T2WI, GET2*WI, Fluid Attenuated Inversion Recovery (FLAIR), Diffusion-weighted Imaging (DWI),
Coronal T1WI, T2WI,
post Gadolinium enhancement with axial and coronal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)
Magnetic resonance angiography (MRA) of the brain focused on circle of Willis using 3D SPGR time of flight method with MIP (maximum intensity projection) reformatted images and raw data display.

COMPARISON:
Applicable previous CT of brain: none
Applicable previous MRI of brain: none

FINDINGS:

*Cerebral lobes: normal
*Basal ganglia and thalami: normal
*White matter tracts: normal

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

*Visualized vascular system: normal / see below
*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*Artery anatomy

Distal internal carotid artery (ICA): normal
Anterior cerebral artery complex (ACA): normal
Middle cerebral artery complex (MCA): normal
Distal vertebral artery (VA): normal
Basilar artery (BA): normal
Posterior cerebral artery (PCA): normal
(Other intracranial arteries are usually hard to see in MRA)

*Vascular pathology

Aneurysm: none
Vascular malformation: none
Arteriovenous fistula: none

*Developmental variants: none / fetal origin PCA / hypoplasia of A1 segment of ACA

*Others: none


IMPRESSION:
No significant intracranial finding
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

;; srMRB
::srmrb::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
1.5 Tesla scanner
Sagittal T1WI (localizer), Axial T1WI, T2WI, GET2*WI, Fluid Attenuated Inversion Recovery (FLAIR), Diffusion-weighted Imaging (DWI),
Coronal T1WI, T2WI,
post Gadolinium enhancement with axial and coronal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)

COMPARISON:
Applicable previous CT of brain: none
Applicable previous MRI of brain: none

FINDINGS:

*Cerebral lobes: normal
*Basal ganglia and thalami: normal
*White matter tracts: normal

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

*Visualized vascular system: normal
*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*Others: none


IMPRESSION:
No significant intracranial finding
)
  Paste(MyForm)
Return
