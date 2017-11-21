; Neuro Orbital Forms

;; CTO1
::cto1::
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

;; CTO1wnl
::cto1wnl::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%

TECHNIQUE:
Multi-slice CT scanner 
Non-contrast 
CT scan of orbit in axial plane and coronal reformatted images 2-2mm slice thickness showed:

TECHNIQUE:
Multi-slice CT scanner 
(1) Non-contrast and (2) Contrast-enhanced 
CT scan of orbit in axial plane and coronal reformatted images 2-2mm slice thickness showed:
CONTRAST MEDIUM: IV route, 80 ml, 1 ml/sec.

Previous CT of orbit: no

Findings:

No evident fracture of bilateral orbits.
No evidence of acute hematoma over bilateral orbital retroocular regions.
Symmetrical size of bilateral orbital retroocular opitc nerves.
No evidence of high density foreign body noted at the bilateral intraocular and retroocular regions.
No evidence of bony fragment noted near optic canal region. 
No evidence of orbital emphysema noted.

IMPRESSION:
No evidence of high density foreign body noted at the bilateral intraocular and retroocular regions.
)
  Paste(MyForm)
Return

;; CTO2
::cto2::
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

;; CTO2wnl
::cto2wnl::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
Noncontrast CT scan and post contrast CT scan of the orbit performed with axial and coronal section, 2-2mm slice thickness showed:

Previous CT of orbit: no

FINDINGS:

Symmetrical bil. rectus muscle without enlargement of rectus muscle noted, no CT evidence of thyroid related ophthalmopathy.

Symmetrical bil. retrobulbar fat was noted. 

No CT evidence of space occupying lesion over orbital, retro-ocular, sella, suprasellar regions.

No obvious soft tissue density over bilateral frontal sinus, sphenoid sinus, ethmoid sinus, maxillary sinus.

Presence of mild exophthalmos of left eye.

Presence of soft tissue thickening over nasophranyx, with bone erosion of the anterior portion of clivus, nasopharynx lesion should be R/O, suggest ENT check up.

Presence of dental artifact and superimpose of the oral cavity, and the oral cavity cannot be well evaluated. Film interpretation is limited.

IMPRESSION:
Symmetrical bil. rectus muscle without enlargement of rectus muscle noted, no CT evidence of thyroid related ophthalmopathy.

No CT evidence of space occupying lesion over orbital, retro-ocular, sella, suprasellar regions.

Presence of mild exophthalmos of left eye.

Presence of soft tissue thickening over nasophranyx, with bone erosion of the anterior portion of clivus, nasopharynx lesion should be R/O, suggest ENT check up.

Others as above descriptions.

SUGGESTION:
Follow up or further evaluation.
)
  Paste(MyForm)
Return


;; MRO1
::mro1::
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
