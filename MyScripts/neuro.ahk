; Neuro Forms

;; Hotstrings
:O:ath::Atherosclerotic change with calcification of intracranial portion of vertebrobasilar arteries and bilateral internal carotid arteries.
:O:sae::Presence of .... bilateral periventricular low density noted, the subcortical arteriosclerotic encephalopathy considered.
:O:ubo::Presence of several tiny hyperintensities in the periventricular white matter regions on T2WI and FLAIR, which may be gliosis, demyelination or tiny old ischemia or tiny previous brain insult.
:O:IND::INDICATION:
:O:COM::COMPARISON:
:O:IMP::IMPRESSION:
:O:SUG::SUGGESTION:
:O:imp2::Others as above descriptions.

;; Templates
#Include MyScripts\neuro-spine.ahk
#Include MyScripts\neuro-ajcc.ahk
#Include MyScripts\neuro-orbital.ahk
#Include MyScripts\neuro-brain.ahk

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