; Neuro Forms

;; Templates
#Include MyScripts\neuro\neuro-spine.ahk
#Include MyScripts\neuro\neuro-ajcc.ahk
#Include MyScripts\neuro\neuro-orbital.ahk
#Include MyScripts\neuro\neuro-brain.ahk
#Include MyScripts\neuro\neuro-neck.ahk
#Include MyScripts\neuro\neuro-sr.ahk

;; hemra
::hemra::
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

;; CTP
::ctp::
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
::mrse::
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
::mrse1::
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
::mrple::
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
::mritumorcp::
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