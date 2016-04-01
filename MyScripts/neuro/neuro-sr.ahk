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

;; srCTCS1
::srctcs1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner;
Non-contrast axial contiguous scanning of cervical spine with sagittal and coronal reformatted images

COMPARISON:
Applicable previous CT of cervical spine: none

FINDINGS:

*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Spinal canal: normal
*Neuroforamen: normal
*Intervertebral disc space: normal
*Prevertebral space: normal

*Spinal cord and disc condition: cannot be well evaluated by CT scan

*Others: none


IMPRESSION:
No evident fracture or dislocation of cervical spine
No significant finding in cervical spine region
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

;; srCTNec
::srctnec::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner with
(1) Non-contrast and (2) Contrast-enhanced
scanning in axial plane from skull base to thoracic inlet with 5-mm-thick contiguous slices and coronal reformatted images.
Contrast medium: intravenous route, volume: 60 mL, rate: 1.0 mL/sec

COMPARISON:
Applicable previous CT of face and neck: none
Applicable previous MRI of face and neck: none

FINDINGS:

*Post-surgical change: none

*Skull base: normal
*Orbits: normal
*Nasal cavity: normal
*Paranasal sinuses: normal

*Nasopharynx: normal / symmetrical thickening, adenoidal hyperplasia favored
*Oropharynx: normal
*Hypopharynx: normal
*Larynx: normal
*Oral cavity: normal / limited interpretation due to dental artifacts
*Thoracic inlet, visualized lung and mediastinum: normal

*Parotid gland: normal
*Submandibular gland: normal
*Thyroid gland: normal / several small nodules

*Lymph nodes: normal
*Vascular structures: normal

*Neck soft tissue and muscles: normal

*Others: none


IMPRESSION:
No significant finding in face and neck region
)
  Paste(MyForm)
Return

;; srCTNec1
::srctnec1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Noncontrast CT scan of head and neck was performed with a multi-slice CT scanner:
SCAN RANGE: axial plane from the skull base to the low neck with 5-mm continuous scan slice thickness and coronal reconstruction

COMPARISON:
Applicable previous CT of face and neck: none
Applicable previous MRI of face and neck: none

FINDINGS:

No contrast medium. Film interpretation is limited.

The detail could not be evaluated in this noncontrast CT.

*Post-surgical change: none

*Skull base: normal
*Orbits: normal
*Nasal cavity: normal
*Paranasal sinuses: normal / (ctp1) ,

*Nasopharynx: normal / symmetrical thickening, adenoidal hyperplasia favored
*Oropharynx: normal
*Hypopharynx: normal
*Larynx: normal
*Oral cavity: normal / limited interpretation due to dental artifacts
*Thoracic inlet, visualized lung and mediastinum: normal

*Parotid gland: normal
*Submandibular gland: normal
*Thyroid gland: normal / several small nodules

*Lymph nodes: normal
*Vascular structures: normal

*Neck soft tissue and muscles: normal

*Others: none


IMPRESSION:
No significant finding in face and neck region

SUGGESTION:
Suggest clinical correlation and follow up.
)
  Paste(MyForm)
Return

;; srCTO1
::srcto1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner with non-contrast scanning in axial plane and coronal reformatted images.

COMPARISON:
Applicable previous CT of orbit: none
Applicable previous MRI of orbit: none

FINDINGS:

*Post-surgical change: none

*Orbit

 Right side:

   Globe: normal
   Bony orbit: normal
   Pre-septal soft tissues: normal
   Lacrimal apparatus: normal
   Optic nerve: normal
   Orbital muscles: normal
   Retro-ocular fat: normal
   Orbital apex: normal

 Left side:

   Globe: normal
   Bony orbit: normal
   Pre-septal soft tissues: normal
   Lacrimal apparatus: normal
   Optic nerve: normal
   Orbital muscles: normal
   Retro-ocular fat: normal
   Orbital apex: normal

*Optic chiasm and suprasellar cistern: normal

*Others: none


IMPRESSION:
No significant finding in bilateral orbital regions
)
  Paste(MyForm)
Return

;; srCTO2
::srcto2::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner with
(1) Non-contrast and (2) Contrast-enhanced
scanning in axial plane and coronal reformatted images.
Contrast medium: intravenous route, volume: 60 mL, rate: 1.0 mL/sec

COMPARISON:
Applicable previous CT of orbit: none
Applicable previous MRI of orbit: none

FINDINGS:

*Post-surgical change: none

*Orbit

 Right side:

   Globe: normal
   Bony orbit: normal
   Pre-septal soft tissues: normal
   Lacrimal apparatus: normal
   Optic nerve: normal
   Orbital muscles: normal
   Retro-ocular fat: normal
   Orbital apex: normal

 Left side:

   Globe: normal
   Bony orbit: normal
   Pre-septal soft tissues: normal
   Lacrimal apparatus: normal
   Optic nerve: normal
   Orbital muscles: normal
   Retro-ocular fat: normal
   Orbital apex: normal

*Optic chiasm and suprasellar cistern: normal

*Others: none


IMPRESSION:
No significant finding in bilateral orbital regions
)
  Paste(MyForm)
Return

;; srCTP
::srctp::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner with non-contrast scanning in axial plane and coronal reformatted images.

COMPARISON:
Applicable previous CT of paranasal sinus: none
Applicable previous MRI of paranasal sinus: none

FINDINGS:

Post-surgical changes: none / post functional endoscopic sinus surgery (FESS) / post Caldwell-Luc procedure (sublabial antrostomy)

*Nasal cavity
   Right: normal / several soft tissue lesions, nasal polyposis favored
   Left: normal / several soft tissue lesions, nasal polyposis favored
   Septum: normal / deviation to left side

*Sinuses and drainage pathways

 Right side:

  Frontal sinus: normal / hypoplasia / mucosal thickening / mucous or soft tissue filling
  Maxillary sinus: normal / retention cyst or polyp / mucosal thickening / mucous or soft tissue filling
  Ethmoid sinus: normal / mucosal thickening / mucous or soft tissue filling
  Ostiomeatal complex: normal / removed / obstructed by polyp, mucosal thickening, or tumor
  Sphenoid sinus: normal / hypoplasia / mucosal thickening / mucous or soft tissue filling

 Left side:

  Frontal sinus: normal / hypoplasia / mucosal thickening / mucous or soft tissue filling
  Maxillary sinus: normal / retention cyst or polyp / mucosal thickening / mucous or soft tissue filling
  Ethmoid sinus: normal / mucosal thickening / mucous or soft tissue filling
  Ostiomeatal complex: normal / removed / obstructed by polyp, mucosal thickening, or tumor
  Sphenoid sinus: normal / hypoplasia / mucosal thickening / mucous or soft tissue filling


*Others: none


IMPRESSION:
no significant finding in paranasal sinuses
chronic paranasal sinusitis
nasal polyposis with obstructive sinusitis
obstructive sinusitis, due to polyp, mucosal thickening, or tumor
DDx: antrochoanal polyp, inverted papilloma, or polyp with obstructive sinusitis, left side
)
  Paste(MyForm)
Return

;; srHRCT
::srhrct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner with ultra-thin slice (<1mm) axial scan of temporal bone using high-resolution bone algorithm, with coronal reconstruction

COMPARISON:
Applicable previous HRCT of temporal bone: none

FINDINGS:

*Temporal bone

 Right side:

     Middle ear cavity: clear / filled with soft tissue or fluid
     Ossicles: intact / eroded / absent
     Cochlea: normal
     Vestibule: normal
     Vestibular and cochlear aqueduct: normal
     Semicircular canals: normal
     Internal auditory canal: normal
     External auditory canal: normal
     Petrous apex: normal
     Mastoid antrum: normal
     Mastoid air cells: normal / poor pneumatization / fluid-filled

 Left side:

     Middle ear cavity: clear / filled with soft tissue or fluid
     Ossicles: intact / eroded / absent
     Cochlea: normal
     Vestibule: normal
     Vestibular and cochlear aqueduct: normal
     Semicircular canals: normal
     Internal auditory canal: normal
     External auditory canal: normal
     Petrous apex: normal
     Mastoid antrum: normal
     Mastoid air cells: normal / poor pneumatization / fluid-filled

*Visualized paranasal sinuses: normal
*Visualized calvarium and skull base: normal

*Others: none


IMPRESSION:
Acute otitis media
Left chronic otitis media with acquired cholesteatoma and ossicular preservation / erosion
)
  Paste(MyForm)
Return

;; srMRANec
::srmranec::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Magnetic resonance angiography (MRA) of the brain focused on circle of Willis using 3D SPGR time of flight method with MIP (maximum intensity projection) reformatted images and raw data display.
Contrast-enhanced MRA of neck with coronal acquisition and MIP reformatted images and raw data display.
Contrast medium: intravenous route, 0.1mmol/kg

COMPARISON:
Applicable previous CT angiography: none
Applicable previous MR angiography: none

FINDINGS:

*Intracranial artery anatomy

Distal internal carotid artery (ICA): normal
Anterior cerebral artery complex (ACA): normal
Middle cerebral artery complex (MCA): normal
Distal vertebral artery (VA): normal
Basilar artery (BA): normal
Posterior cerebral artery (PCA): normal
(Other intracranial arteries are usually hard to see in MRA)

*Extracranial artery anatomy

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

*Vascular pathology

Aneurysm: none
Vascular malformation: none
Arteriovenous fistula: none

*Developmental variants: none / fetal origin PCA / hypoplasia of A1 segment of ACA

*Others: none

IMPRESSION:
No significant finding
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

;; srMRBcva
::srmrbcva::
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

Presence of small hypointensity on GET2*WI noted at left parietal region, possible due to previous hemorrhage or calcification.

Presence of brain tissue loss change involving right temporal, right parietal, and left frontal regions, with compensatory dilatation of left lateral ventricle, in favor of previous brain insult, such as old ischemic infarction.

*Basal ganglia and thalami: normal

Presence of several tiny lesions involving bilateral basal ganglia with hypointensity on T1WI and hyperintensity on T2WI, in favor of previous lacunar infarcts or previous brain insults.

Presence of tiny old ischemic infarction or or tiny previous brain insult involving right/left/bil. basal ganglion region.

Presence of tiny old ischemic infarction or previous brain insult involving bil. basal ganglion, bil. corona radiata and bil. thalami regions.

Presence of small old intracranial hemorrhage (ICH) hemosiderin noted including the pons, bil. basal ganglion and bil. thalamus region and bilateral cerebral and cerebellar hemispheres noted. From the above image finding and clinical history, more in favor of due to the hypertensive ICH. Other DDx: amyloid angiopathy.

*White matter tracts: normal / as above

1. Presence of bilateral white matter hyperintensities along the lateral ventricles on T2WI and FLAIR images, subcortical arteriosclerotic encephalopathy considered.
2. Presence of several tiny hyperintensities in bilateral periventricular white matter and centrum semiovale, which may be gliosis, demyelination or tiny old ischemia due to aging process and chronic hypertension.

small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter, with high signal intensity on T2WI, FLAIR, and DWI, and lower apparent diffusion coefficeint (ADC).

Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.

Presence of mild/moderate/severe periventricular hyperintensity on T2WI and FLAIR noted, the subcortical arteriosclerotic encephalopathy considered.

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

Mild dilatation of intraventricular system with widening of subarachnoid space of bilateral cerebral hemispheres, in favor of aging mild brain atrophy.

*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*MRA Visualized vascular system: normal / see below

*Artery anatomy by MRA
Distal internal carotid artery (ICA): normal
Anterior cerebral artery complex (ACA): normal
Middle cerebral artery complex (MCA): normal
Distal vertebral artery (VA): normal
Basilar artery (BA): normal
Posterior cerebral artery (PCA): normal
(Other intracranial arteries are usually hard to see in MRA)

*Artery anatomy by MRA
*Developmental variants: bilateral fetal origin PCA, hypoplasia of right A1 segment of ACA
Distal internal carotid artery (ICA): normal
Middle cerebral artery complex (MCA): normal
Distal vertebral artery (VA): normal
Basilar artery (BA): normal
(Other intracranial arteries are usually hard to see in MRA)

*MRA shows no evidence of abnormal intracranial engorged vessles and no evidence of retrograde venous drainage noted over the posterior fossa adjacent to the transverse and sigmoid venous sinus region noted, however, minute dura arterial venous fistula can not be completely to excluded in this MRA study.

IMPRESSION:
Essentially negative finding.
No remarkable significant intracranial findings.
No evidence of high signal intensity on DWI and lower apparent diffusion coefficeint suggesting acute ischemia infarction in the brain and brainstem noted.
1. Previous brain insult; old infarcts, old ICH.
2. No definite tumor mass lesion in the brain.

SUGGESTION:
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; srMRBcva-wnl
::srmrbcva-wnl::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
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

*Cerebral lobes: small hypointensity on GET2*WI noted at left parietal region, possible due to previous hemorrhage or calcification
*Basal ganglia and thalami: normal
*White matter tracts: several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age
*Calvarium and scalp: normal

*Artery anatomy by MRA
Distal internal carotid artery (ICA): normal
Anterior cerebral artery complex (ACA): normal
Middle cerebral artery complex (MCA): normal
Distal vertebral artery (VA): normal
Basilar artery (BA): normal
Posterior cerebral artery (PCA): normal
(Other intracranial arteries are usually hard to see in MRA)

*Artery anatomy by MRA
*Developmental variants: bilateral fetal origin PCA, hypoplasia of right A1 segment of ACA
Distal internal carotid artery (ICA): normal
Middle cerebral artery complex (MCA): normal
Distal vertebral artery (VA): normal
Basilar artery (BA): normal
(Other intracranial arteries are usually hard to see in MRA)

*MRA shows no evidence of abnormal intracranial engorged vessles and no evidence of retrograde venous drainage noted over the posterior fossa adjacent to the transverse and sigmoid venous sinus region noted, however, minute dura arterial venous fistula can not be completely to excluded in this MRA study.

IMPRESSION:
1. tiny old ischemia infarcts and tiny previous brain insult.
2. No strong evidence of dura arterial venous fistula noted in this MRA study.
3. No evidence of significant intracranial stenosis noted in this MRA study.
4. No evidence of acute ischemia infarction in the brain noted.
)
  Paste(MyForm)
Return

;; srMRICVA
::srmricva::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
The MR of the brain performed with Sagittal T1WI (localizer)
Axial T1WI, T2WI, GET2*WI, FLAIR (Fluid Attenuated Inversion Recovery)
Coronal T1WI, T2WI
Diffusion-weighted Imaging (DWI)
And post Gadolinium (0.1 mmol/kg) enhancement with axial and coronal T1 weighted image
Intracranial MRA with 3D TOF and focus on the circle of Willis showed:

COMPARISON:
Applicable previous CT of brain: none
Applicable previous MRI of brain: none

FINDINGS:

*Cerebral lobes: normal

Presence of small hypointensity on GET2*WI noted at left parietal region, possible due to previous hemorrhage or calcification.

Presence of brain tissue loss change involving right temporal, right parietal, and left frontal regions, with compensatory dilatation of left lateral ventricle, in favor of previous brain insult, such as old ischemic infarction.

*Basal ganglia and thalami: normal

Presence of several tiny lesions involving bilateral basal ganglia with hypointensity on T1WI and hyperintensity on T2WI, in favor of previous lacunar infarcts or previous brain insults.

Presence of tiny old ischemic infarction or or tiny previous brain insult involving right/left/bil. basal ganglion region.

Presence of tiny old ischemic infarction or previous brain insult involving bil. basal ganglion, bil. corona radiata and bil. thalami regions.

Presence of small old intracranial hemorrhage (ICH) hemosiderin noted including the pons, bil. basal ganglion and bil. thalamus region and bilateral cerebral and cerebellar hemispheres noted. From the above image finding and clinical history, more in favor of due to the hypertensive ICH. Other DDx: amyloid angiopathy.

*White matter tracts: normal / as above

1. Presence of bilateral white matter hyperintensities along the lateral ventricles on T2WI and FLAIR images, subcortical arteriosclerotic encephalopathy considered.
2. Presence of several tiny hyperintensities in bilateral periventricular white matter and centrum semiovale, which may be gliosis, demyelination or tiny old ischemia due to aging process and chronic hypertension.

small recent acute ischemic infarction, about 1.4cm in diameter, involving left periventricular white matter, with high signal intensity on T2WI, FLAIR, and DWI, and lower apparent diffusion coefficeint (ADC).

Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.

Presence of mild/moderate/severe periventricular hyperintensity on T2WI and FLAIR noted, the subcortical arteriosclerotic encephalopathy considered.

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal
*Pineal region: normal

*Extra-axial spaces: normal for the patient's age
*Basal cisterns: normal for the patient's age
*Ventricular system: normal for the patient's age

Mild dilatation of intraventricular system with widening of subarachnoid space of bilateral cerebral hemispheres, in favor of aging mild brain atrophy.

*MRA Visualized vascular system: normal / see below

MRA shows turbulent flow or mild stenosis over intracranial portion of bilateral internal carotid arteries and basilar atery.

Noncontrast intracranial MRA with 3D TOF shows that multiple foci of high grade stenoses over intracranial portion of the internal carotid artery.

MRA shows presence of stenosis noted over the bilateral carotid siphon and supraclinoid internal carotid arteries, and high grade stenosis over main trunk of right side middle cerebral artery, and with paucity of the branches of the right side middle cerebral artery noted.

MRA shows--
Presence of normal variation of fenestration of the proximal basilar artery. (Hx: 13776391, ac: 65343630)
(Hx: 14770377, Ac: 69245411)

CTA shows noraml variation of A1 of left anterior cerebral artery fenestration. (Hx: 9481974, ac: 99785929)

Normal variation of right fetal posterior cerebral artery and trifurcation of anterior cerebral artery. (Hx: 3577988, ac: 66986943)

MRA shows normal variation of right persistent trigeminal artery. (HX: 5581748, ac: 57139640)

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


*Visualized nasopharynx and paranasal sinuses: clear
*Visualized orbits: normal
*Calvarium and scalp: normal

*Others: none

IMPRESSION:
Essentially negative finding.
No remarkable significant intracranial findings.
No evidence of high signal intensity on DWI and lower apparent diffusion coefficeint suggesting acute ischemia infarction in the brain and brainstem noted.
1. Previous brain insult; old infarcts, old ICH.
2. No definite tumor mass lesion in the brain.

SUGGESTION:
Follow up or further evaluation.
)
  Paste(MyForm)
Return

;; srMRNec
::srmrnec::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Sagittal T1WI and T2WI,
Axial T1WI and T2WI with fat suppression,
Coronal T1WI and T2WI with fat suppression,
Post Gd-enhanced dynamic and conventional T1WI with fat suppression
Contrast medium: intravenous route, 0.1 mmol/kg, rate: 2.0 mL/sec

COMPARISON:
Applicable previous CT of face and neck: none
Applicable previous MRI of face and neck: none

FINDINGS:

*Post-surgical change: none

*Skull base: normal
*Orbits: normal
*Nasal cavity: normal
*Paranasal sinuses: normal

*Nasopharynx: normal / symmetrical thickening, adenoidal hyperplasia favored / mild thickening, post-therapeutic change favored.
*Oropharynx: normal
*Hypopharynx: normal
*Larynx: normal
*Oral cavity: normal / limited interpretation due to dental artifacts
*Thoracic inlet, visualized lung and mediastinum: normal

*Parotid gland: normal
*Submandibular gland: normal
*Thyroid gland: normal / several small nodules

*Lymph nodes: normal
*Vascular structures: normal

*Cervical spine: normal / increased bone marrow signal on T1WI, consistent with post radiation change
*Neck soft tissue and muscles: normal

*Others: none


IMPRESSION:
No significant finding in face and neck region
No evident tumor recurrence
)
  Paste(MyForm)
Return

;; srMRO1
::srmro1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Axial T1WI and T2WI with Fat sat,
Coronal T1WI and T2WI with Fat sat,
Post contrast enhancement dynamic axial T1WI,
Post contrast enhancement conventional coronal and axial T1WI with Fat sat
Contrast medium: intravenous route, 0.1 mmol/kg, rate: 2.0 mL/sec

COMPARISON:
Applicable previous CT of orbit: none
Applicable previous MRI of orbit: none

FINDINGS:

*Post-surgical change: none

*Orbit

 Right side:

   Globe: normal
   Bony orbit: normal
   Pre-septal soft tissues: normal
   Lacrimal apparatus: normal
   Optic nerve: normal
   Orbital muscles: normal
   Retro-ocular fat: normal
   Orbital apex: normal

 Left side:

   Globe: normal
   Bony orbit: normal
   Pre-septal soft tissues: normal
   Lacrimal apparatus: normal
   Optic nerve: normal
   Orbital muscles: normal
   Retro-ocular fat: normal
   Orbital apex: normal

*Optic chiasm and suprasellar cistern: normal

*Others: none


IMPRESSION:
No significant finding in bilateral orbital regions
)
  Paste(MyForm)
Return

;; srMRsella
::srmrsella::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Sagittal T1WI (localizer)
Coronal T1WI and T2WI
Sagittal T1WI and T2WI
Post contrast dynamic T1WI and conventional T1WI with Fat sat

COMPARISON:
Applicable previous MRI of sella: none

FINDINGS:

*Post-surgical change: none / transsphenoidal resection of pituitary adenoma

*Mass:
   Size: 1.5 x 1 x 1 cm
   Location: sella and suprasella, right cavernous sinus
   Enhancement: homogeneous
   Compression: optic chiasm
   DDx: Pituitary macroadenoma favored

*Pituitary gland:
   Morphology: normal / compressed by the mass / incorporated with the mass
   Height: 6 mm (normal for the patient's age)
   Posterior lobe T1WI hyperintensity: normal
   Intraglandular lesion: none / cyst / microadenoma presented as delayed enhancing nodule

*Sella turcica: normal
*Cavernous sinus: normal
*Sphenoid sinus: normal

*Pituitary stalk: normal
*Hypothalamus: normal

*Others: none

IMPRESSION:
Pituitary macroadenoma
)
  Paste(MyForm)
Return

;; srMRsella-and-brain
::srmrsellaandbrain::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Sella:
Sagittal T1WI (localizer)
Coronal T1WI and T2WI
Sagittal T1WI and T2WI
Post contrast dynamic T1WI and conventional T1WI with Fat sat
Brain:
Axial T1WI, T2WI, GET2*WI, Fluid Attenuated Inversion Recovery (FLAIR), Diffusion-weighted Imaging (DWI),
post Gadolinium enhancement with axial and coronal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)

COMPARISON:
Applicable previous MRI of sella and brain: none


FINDINGS:

*Post-surgical change: none / transsphenoidal resection of pituitary adenoma

*Mass:
   Size: 1.5 x 1 x 1 cm
   Location: sella and suprasella, right cavernous sinus
   Enhancement: homogeneous
   Compression: optic chiasm
   DDx: Pituitary macroadenoma favored

*Pituitary gland:
   Morphology: normal / compressed by the mass / incorporated with the mass
   Height: 6 mm (normal for the patient's age)
   Posterior lobe T1WI hyperintensity: normal
   Intraglandular lesion: none / cyst / microadenoma presented as delayed enhancing nodule

*Sella turcica: normal
*Cavernous sinus: normal
*Sphenoid sinus: normal

*Pituitary stalk: normal
*Hypothalamus: normal


*Cerebral lobes: normal
*Basal ganglia and thalami: normal
*White matter tracts: normal

*Midline shift: none

*Cerebellum: normal
*Brainstem: normal
*Sella and skull base: normal / see above
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
Pituitary macroadenoma
)
  Paste(MyForm)
Return

;; srMRSPC1
::srmrspc1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Coronal T2WI (localizer)
Sagittal T1WI, T2WI, gradient echo T2*WI
Axial gradient echo T2*WI
post Gadolinium enhancement with axial and sagittal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)

COMPARISON:
Applicable previous MRI of cervical spine: none

FINDINGS:

*Post-surgical change: none

*Spinal stenosis:

C4-5:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

C5-6:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Prevertebral space: normal
*Intervertebral disc: normal / see above
*Intradural extramedullary space: normal
*Spinal cord: normal

*Others: none


IMPRESSION:
Spinal canal stenosis
)
  Paste(MyForm)
Return

;; srMRSPC2
::srmrspc2::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Coronal T2WI (localizer)
Sagittal T1WI, T2WI, gradient echo T2*WI
Axial gradient echo T2*WI

COMPARISON:
Applicable previous MRI of cervical spine: none

FINDINGS:

*Post-surgical change: none

*Spinal stenosis:

C4-5:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

C5-6:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I


*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Prevertebral space: normal
*Intervertebral disc: normal / see above
*Intradural extramedullary space: normal
*Spinal cord: normal

*Others: none


IMPRESSION:
Spinal canal stenosis
)
  Paste(MyForm)
Return

;; srMRSPL1
::srmrspl1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Coronal T2WI with fat sat (localizer)
Sagittal T1WI, T2WI
Axial T1WI and T2WI
post Gadolinium enhancement with axial and sagittal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)

COMPARISON:
Applicable previous MRI of lumbar spine: none

FINDINGS:

*Post-surgical change: none

*Spinal stenosis:

L4-5:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

L5-S1:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Paravertebral space: normal
*Intervertebral disc: normal / see above
*Intradural space: normal

*Others: none


IMPRESSION:
Spinal canal stenosis
)
  Paste(MyForm)
Return

;; srMRSPL2
::srmrspl2::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Coronal T2WI with fat sat (localizer)
Sagittal T1WI, T2WI
Axial T1WI and T2WI

COMPARISON:
Applicable previous MRI of lumbar spine: none

FINDINGS:

*Post-surgical change: none

*Spinal stenosis:

L4-5:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

L5-S1:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Paravertebral space: normal
*Intervertebral disc: normal / see above
*Intradural space: normal

*Others: none


IMPRESSION:
Spinal canal stenosis
)
  Paste(MyForm)
Return

;; srSPINE-myelo-CT
::srspinemyeloct::
  MyOrder := CopyOrder()
  MyForm =
(
Hx: 3222853, Ac: 71633372, M/77Y, 20150430

Myelography T&L Spine
Myelography C&T Spine

Myelography was performed smoothly under fluoroscopic guidance via puncture of L3/4 interspinous space.

INDICATION: %MyOrder%
TECHNIQUE:
Multi-slice CT scanner;
Post-myelography axial contiguous scanning of whole spine with sagittal and coronal reformatted images

COMPARISON:
Applicable previous CT of spine: none

FINDINGS:

C3/4: mild bulging disc and osteophytes, causing mild spinal canal stenosis.
T12: compression fracture with mild retropulsed posterior cortex, causing mild spinal canal stenosis

*Vertebral body
  Morphology:
   1. moderate collapse of T12 vertebral body, in favor of compression fracture.
   2. degenerative change of whole spine with osteophytes over unco-vertebral joints noted.

  Alignment: fracture of pars interarticularis of L5 resulting in grade I spondylolytic spondylolisthesis of L5 over S1, and stenosis of bilateral neuroforamina of L5/S1 .

*Vertebra, posterior elements: see above
*Spinal canal: see above
*Neuroforamen: see above
*Intervertebral disc space: normal
*Prevertebral space: normal

*Spinal cord and disc condition: cannot be well evaluated by CT scan

*Others: none


IMPRESSION:
See descriptions
)
  Paste(MyForm)
Return

;; srMRSPT
::srmrspt::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Lumbar spine localization (sagittal T2WI)
Coronal T2WI with fat sat
Sagittal T1WI, T2WI
Axial T1WI and T2WI with fat sat
post Gadolinium enhancement with axial and sagittal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)

COMPARISON:
Applicable previous MRI of thoracic spine: none

FINDINGS:

*Post-surgical change: none

*Spinal stenosis:

T8-9:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

T11-12:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Intervertebral disc: normal / see above
*Intradural extramedullary space: normal
*Spinal cord: normal

*Others: none


IMPRESSION:
Spinal canal stenosis
)
  Paste(MyForm)
Return


;; srSPINE-whole-MR-CE
::srspinewholemrce::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
TECHNIQUE:
1.5 Tesla scanner
Cervical spine localization (sagittal T2WI)
Coronal T2WI with fat sat
Sagittal T1WI, T2WI, Iterative Decomposition of water and fat with Echo Asymmetry and Least Squares reconstruction (IDEAL) sequence
Post-contrast sagittal T1WI IDEAL
post Gadolinium enhancement with axial and sagittal T1 weighted images (contrast medium: intravenous route, 0.1mmol/kg)
Scan range: whole spine

COMPARISON:
Applicable previous MRI of spine: none

FINDINGS:

*Post-surgical change: none

*Spinal stenosis:

T8-9:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

T11-12:
  Spinal canal stenosis: moderate
  Neuroforaminal stenosis: no
  Intervertebral disc: bulging / posterior protrusion / extrusion in central / subarticular / foraminal / extraforaminal zone
  Disc space narrowing: yes
  Hypertrophy of ligamentum flavum: yes
  Uncovertebral / facet joint hypertrophy and osteophytes: no
  Spondylolisthesis: no / degenerative, grade I

*Vertebral body
  Morphology: normal
  Alignment: normal

*Vertebra, posterior elements: normal
*Intervertebral disc: normal / see above
*Intradural extramedullary space: normal
*Spinal cord: normal

*Others: none


IMPRESSION:
Spinal canal stenosis
)
  Paste(MyForm)
Return
