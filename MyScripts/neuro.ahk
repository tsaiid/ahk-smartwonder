; Neuro Forms

;; Hotstrings
:O:ath::Atherosclerotic change with calcification of intracranial portion of vertebrobasilar arteries and bilateral internal carotid arteries.
:O:sae::Presence of .... bilateral periventricular low density noted, the subcortical arteriosclerotic encephalopathy considered.
:O:ubo::Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.
:O:SUG::SUGGESTION:
:O:imp2::Others as above descriptions.

;; Templates
#Include MyScripts\neuro-spine.ahk
#Include MyScripts\neuro-ajcc.ahk


;; 1CTA
:O:1cta::
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

;; hemra
:O:hemra::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

The MRA of the brain with focus on circle of Willis or skull base and Neck region with 2D SPGR time of flight,
Post contrast enhanced 3D Fast SPGR MRA of the aortic arch and the Neck,
MIP (maximum intensity projection) of collapse and projection image:

COMPARISON:
Previous MRA of Brain and Neck: none.

FINDINGS:

No evidence of aneurysm or arterial-venous malformation (AVM) noted near the circle of Willis regions.

No evidence of occlusion or high grade stenosis over intracranial portion of the internal carotid artery and vertebral basilar artery, and main trunk of the bilateral anterior cerebral arteries and middle cerebral arteries.

No evidence of occlusion or high grade stenosis over the carotid bifurcation and bilateral proximal internal carotid arteries and external carotid arteries regions of the neck portion noted.

No evidence of occlusion or high grade stenosis over the orifice of the right side brachiocephalic trunk, left side common carotid artery and left side subclavian artery from the aortic arch region noted.

IMPRESSION:
No obvious vascular lesion in brain and neck regions.

SUGGESTION:
Suggest clinical correlation and follow up.
)
  Paste(MyForm)
Return


;; CTN1
:O:ctn1::
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
:O:ctn2::
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

;; MRICVA
:O:mricva::
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

;; CTNEC
:O:ctnec::
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

Due to no contrast-enhanced CT performed, small enhancing lesion could not be evaluated.

1. Primary tumor status:

2. Cervical nodes:

* right/left/bilateral level I, II, III, IV, V, VI, VII

No evidence of bulky lymph nodes, and lymph nodes size smaller than 1 cm, over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions was noted.

No evidence of bulky lymph nodes (> 1cm) over bilateral carotid space and posterior cervical space noted.

No evidence of bulky lymph nodes in shortest axis (> 1cm) over bilateral carotid space and posterior cervical space noted.

No evidence of bulky lymph nodes in shortest axis (> 1cm) over bilateral supraclavicular fossas noted.

No evidence of bulky lymph nodes in shortest axis (> 1.5cm) over bilateral submandibular and submental space noted.

a. No evidence of bulky lymph nodes over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions was noted.

b. Presence of several/multiple lymph nodes noted over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions, the biggest size about --------  cm, R/O inflammatory or metastatic lymph nodes.

c. Presence of several lymph nodes noted over bilateral carotid space and posterior triangle of submandibular and upper neck regions, the biggest size about 1.1 cm, R/O inflammatory lymph nodes. However, lymphoma, metastatic lymph nodes can not be completely excluded.  Suggest clinical check up.

d. Presence of several/multiple lymph nodes noted over ---------------, the biggest size about --------  cm, the differential diagnoses including lymphoma, metastasis, or inflammation, recommend biopsy or close follow up.


3. Others:

Orbits: normal
Paranasal sinuses: normal
Skull base: normal
Nasopharynx: normal
Oropharynx: normal
Hypopharynx: normal
Larynx: normal
Oral cavity: normal/limited interpretation due to dental artifacts
Thoracic inlet: normal
Parotid gland: normal
Submandibular gland: normal
Thyroid gland: normal
Lymph nodes: No evidence of bulky lymph nodes (> 1 cm) over bilateral carotid space and posterior triangle of submandibular and neck regions noted.

a. No evidence of enhanced mass lesion in the submandibular and neck region.

b. No particular findings of nasopharynx, parotid gland, and submandibular gland.

c. No particular findings of nasopharynx, parotid gland, submandibular gland, and thyroid gland.

d. The axilla region cannot be well evaluated due to small FOV of the head and neck CT.

IMPRESSION:

SUGGESTION:
Suggest clinical correlation and follow up.
)
  Paste(MyForm)
Return

;; MRB
:O:mrb::
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

;; MRNEC
:O:mrnec::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of the skull base and neck was performed with a 1.5-T scanner:
METHOD: Sagittal T1WI and T2WI, Axial T1WI and T2WI with fat suppression, Coronal T1WI and T2WI with fat suppression, Post Gd-enhanced dynamic and conventional T1WI with fat suppression
SCAN RANGE: from the skull base to the low neck
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

COMPARISION:
PREVIOUS MRI of the skull base and neck: no
PREVIOUS CT of the skull base and neck: no

FINDINGS:

1. Primary tumor status:

2. Cervical nodes:
a. No evidence of bulky lymph nodes over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions was noted.

b. Presence of several/multiple lymph nodes noted over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions, the biggest size about --------  cm, R/O inflammatory or metastatic lymph nodes.

c. Presence of several/multiple lymph nodes noted over ---------------, the biggest size about --------  cm, the differential diagnoses including lymphoma, metastasis, or inflammation, recommend biopsy or close follow up.

3. Others:
a. No evidence of enhanced mass lesion in the submandibular and neck region.

b. No particular findings of nasopharynx, parotid gland, and submandibular gland.

c. No particular findings of nasopharynx, parotid gland, submandibular gland, and thyroid gland.

d. Presence of high signal intensity on T1WI over the C-spine, compatible with post radiation change.

IMPRESSION:
SUGGESTION:
)
  Paste(MyForm)
Return

;; CTP
:O:ctp::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

Noncontrast CT of the paranasal sinuses was performed with a multi-slice CT scanner:
SCAN RANGE: axial plane of the paranasal sinuses with 2 mm continuous scan slice thickness and coronal reconstruction

PREVIOUS CT SCAN of the paranasal sinuses: no

FINDINGS:


IMPRESSION:

SUGGESTION:
)
  Paste(MyForm)
Return

;; CTO1
:O:cto1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

Noncontrast CT scan of orbit performed with axial and coronal section, 2-2mm slice thickness showed:

Previous CT of orbit: no

FINDINGS:

1. ---------- of fracture over --------------- orbital wall.
2. Presence of ---------- orbital floor fracture, with rectus muscle/orbital fat herniation.
3. Presence of high density foreign body noted over ----------
4. No evidence/presence of bony fragment noted near optic canal region.
5. Presence of ----------- orbital emphysema noted.

IMPRESSION:

SUGGESTION:
)
  Paste(MyForm)
Return

;; CTO2
:O:cto2::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

Noncontrast CT scan and post contrast CT scan of the orbit performed with axial and coronal section, 2-2mm slice thickness showed:

Previous CT of orbit: no

FINDINGS:

1. Presence of cystic/mass lesion, size about ---------- cm, over ----------.
2. ----------- of enlargement of -------------- rectus muscle and expophthalmos noted, ------- of tendon insertion, thyroid related ophthalmophathy/orbital pseudotumor more in favor.
3. No evidence of mass lesion over orbital, retro-ocular, sellar, suprasellar regions.

IMPRESSION:

SUGGESTION:
)
  Paste(MyForm)
Return

;; MRSE
:O:mrse::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of the sella performed with Sagittal T1WI (localizer)
Sagittal  T1WI and T2WI
Coronal T1WI and T2WI
Post contrast dynamic and conventional T1WI with Fat sat showed:

PREVIOUS MRI of the sella: no

FINDINGS:

Pituitary gland height about 5 mm.

No evidence of ectopic post pituitary lobe noted.

No evidence of mass lesion on the sellar or suprasellar or hypothalamus regions.

No evidence of abnormal enhancing mass lesion noted over the suprasellar region noted.



Pituitary gland height about 7 mm.

No evidence of ectopic post pituitary lobe noted.

No evidence of mass lesion on the sellar or suprasellar or hypothalamus regions.

No evidence of abnormal enhancing mass lesion noted over the suprasellar region noted.

No evidence of hyposignal intensity nodule noted within the pituitary gland in the conventional and dynamic scan. Suggest correlate with prolatin level.

1. Presence of enhanced cystic/mass lesion over sellar and suprasellar arer, size about---------cm.
2. Pituitary gland height about--------mm.
3. No evidence of mass lesion on the sellar or suprasellar or hypothalamus regions.
4. Presence of hyposignal intensity nodule over the right/left pituitary gland in the conventional/dynamic scan
5. No evidence of hyposignal intensity nodule noted within the pituitary gland in the conventional and dynamic scan
6. Suggest correlate with serum prolactin level.

IMPRESSION:
No evidence of mass lesion on the sellar or suprasellar or hypothalamus regions.

From the imaging finding and clinical history, compatible with pituitary microadenoma over the right side pituitary gland and S/P treatment.
No obvious interval change as compared with previous last study.

SUGGESTION:
Check hormone profile.
Suggest correlate with serum prolactin level.
Suggest correlate with serum prolactin and other pituitary gland hormone level.
)
  Paste(MyForm)
Return

;; MRSE1
:O:mrse1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of the sella performed with
Sagittal T1WI (localizer)
Sagittal T1WI and T2WI
Coronal T1WI and T2WI
Post contrast conventional T1WI with Fat sat showed:

FINDINGS:

1. Presence of enhanced cystic/mass lesion over sellar and suprasellar arer, size about---------cm.
2. Pituitary gland height about--------mm.
3. No evidence of mass lesion on the sellar or suprasellar or hypothalamus regions.
4. Presence of hyposignal intensity nodule over the right/left pituitary gland in the conventional/dynamic scan.
5. No evidence of hyposignal intensity nodule noted within the pituitary gland in the conventional and dynamic scan
IMPRESSION:
SUGGESTION:
)
  Paste(MyForm)
Return

;; MRPLE
:O:mrple::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

The MRI of the brachial plexus performed with neurovascular coil
Coronal T1WI, T2WI with Fat Sat images
Sagittal T1WI, T2 STIR images
Coronal 3D FIESTA
Axial T1WI and T2 STIR images:

PREVIOUS MRI of C-spine and brachial plexus: no

FINDINGS:

No evidence of obvious high signal in the brachial plexus noted on T2WI and STIR images.
No obvious traumatic traction avulsion pseudomeningocele noted over the C-spine region noted.
Recommend correlate with the EMG and NCV studies.

Post contrast study shows no obvious enhancing mass lesion over the brachial plexus region.

Presence of bulging disc noted over C4-5, C5-6, C6-7, causing mild spinal stenosis.

No obvious significant spinal stenosis of the C-spine.

No evidence of focal herniation of nucleus pulposis (HIVD) in the C-spine region noted.



1. Presence of high signal in the ----------of the right/left brachial plexus on T2WI and STIR images.
2. No evidence of obvious high signal in the brachial plexus noted on T2WI and STIR images.
3. Presence of soft tissue swelling/hematoma noted over----
4. Presence of bulging/protusion/herniated disc noted over----------, causing mild/moderate/severe spinal stenosis.

IMPRESSION:
No obvious traumatic traction avulsion pseudomeningocele noted over the C-spine region noted.
No evidence of obvious high signal in the brachial plexus noted on T2WI and STIR images.
No obvious enhancing mass lesion over the brachial plexus region.

SUGGESTION:
Recommend correlate with the EMG and NCV studies.
)
  Paste(MyForm)
Return


;; MRO1
:O:mro1::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

MRI of the orbit performed with Sagittal T1WI (localizer)
Axial T1WI and FSE T2WI with Fat sat
Coronal T1WI and FSE T2WI with Fat sat
Post contrast conventional T1WI with Fat sat showed:

Previous MRI of orbit: none

Findings:
No evidence of abnormal signal intensity mass lesion over the bil. orbital retrobulbar regions noted.

No obvious high signal intensity on T2WI over the bil. orbital retrobulbar optic nerves noted.

Post contrast study shows no obvious enhancement noted over the bil. orbital retrobulbar optic nerves noted.

No evidence of abnormal hyperintense lesion noted over the white matter and corpus callosum on T2WI and FLAIR noted, no MRI evidence of multiple sclerosis plaques.

No definite abnormal signal intensity mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

The bilateral lateral ventricles showed symmetrical without dilatation.

Post contrast study showed no abnormal enhancing lesion in the brain and no abnormal leptomeningeal enhancement noted.



1. Presence of soft tissue mass, size about----------cm, noted over--------
2. No evidence of bulky lymph nodes over ---------------- carotid space and ----------------- posterior triangle of submandibular and neck regions was noted.
3. Presence of several/ multiple lymph nodes noted over --------------- carotid space and ---------------- posterior triangle of submandibular and neck regions, the biggest size about-------cm.
4. Presence of lymphadenopathy over ------------- carotid space and ------------ posterior triangle of submandibular and neck regions was noted.

IMPRESSION:
No evidence of abnormal signal intensity mass lesion over the bil. orbital retrobulbar regions noted.
No obvious high signal intensity on T2WI over the bil. orbital retrobulbar optic nerves noted.
Post contrast study shows no obvious enhancement noted over the bil. orbital retrobulbar optic nerves noted.
No definite abnormal signal intensity mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.
No MRI evidence of multiple sclerosis plaques.
SUGGESTION:
)
  Paste(MyForm)
Return

;; mritumorCP
:O:mritumorcp::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

The MR of the brain performed with Sagittal T1WI (localizer)
Axial T1WI, T2WI, GET2*WI, FLAIR (Fluid Attenuated Inversion Recovery)
Coronal T1WI, T2WI
Diffusion-weighted Imaging (DWI)
3D FIESTA with 0.8mm thin slice thickness focusing on the brain stem
And post Gadolinium enhancement with axial and coronal T1 weighted image showed:
SCAN RANGE: from the skull base to the vertex
CONTRAST MEDIUM: IV route, 0.1mmol/kg

PREVIOUS MRI of the brain: no

FINDINGS:

Postcontrast study shows no evidence of abnormal enhancing tumor mass lesion over the bil. C-P angle cistern region noted.

No evidence of abnormal enhancing tumor mass lesion over the skull base and bil. CP angle cistern and bil. pre-pontine cistern region noted.

Presence of small area high signal intensity on T2WI noted over the left side mastoid air sinus, rule out small effusion or poor pneumatization of left side mastoid air sinus.

No definite abnormal signal intensity mass lesion in the brain noted including supratentorial cerebral hemisphere and infratentorial cerebellum and brain stem region.

The bilateral lateral ventricles showed symmetrical without dilatation.

Post contrast study showed no abnormal enhancing lesion in the brain and no abnormal leptomeningeal enhancement noted.

IMPRESSION:
No evidence of abnormal signal intensity tumor mass lesion over the bil. C-P angle cistern region noted.

No evidence of abnormal enhancing tumor mass lesion over the brain stem, skull base, bil. CP angle cistern and bil. pre-pontine cistern region noted.
SUGGESTION:
)
  Paste(MyForm)
Return