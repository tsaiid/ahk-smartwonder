; Neuro AJCC Forms

;; Oral-CT-AJCC7
::oralct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Non-contrast and (2) Contrast enhancement
SCAN RANGE: Axial plane from the skull base to the low neck with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS CT of the head and neck: none.

FINDINGS:
1. Primary tumor/Lesion status:
Mass lesion, maximum dimension ----- cm, noted over ------.
[T1 (<= 2 cm), T2 (2~4 cm), T3 (>4 cm)]
Locoregional tumor extension/Lesion extension:
[T4a] Tumor/mass invades adjacent structures (eg, through cortical bone[mandible or maxilla], into deep [extrinsic] muscle of the tongue [genioglossus, hyoglossus, palatoglossus, and styloglossus], maxillary sinus, skin of face).
[T4b] Tumor/mass invades masticator space, pterygoid plates, or skull base and/or encases internal carotid artery.

2. Regional lymph nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

* right/left/bilateral level I > = 1.5cm: Nil, Yes, Necrosis
* right/left/bilateral level II > = 1.5 cm: Nil, Yes, Necrosis
* right/left/bilateral level III > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level IV > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level V > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VI > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VII > = 1cm: Nil, Yes, Necrosis

Positive: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane), confluent dimension about /// cm (craniocaudal), Necrosis
Equivocal: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane)
Negative:

[NX] Regional lymph nodes cannot be assessed
[N0] No regional lymph node metastasis
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2] Metastasis in a single ipsilateral lymph node, larger than 3 cm but 6 cm or less in greatest dimension; or in multiple ipsilateral lymph nodes, none larger than 6 cm in greatest dimension; or in bilateral or contralateral lymph nodes, none larger than 6 cm in greatest dimension
[N2a] Metastasis in single ipsilateral lymph node larger than 3 cm but 6 cm or less in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none larger than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none larger than 6 cm in greatest dimension
[N3] Metastasis in a lymph node larger than 6 cm in greatest dimension

LN0: No evidence of bulky lymph nodes in ----- carotid space and ---- posterior cervical space.
LN1: Presence of small lymph nodes (less than 1cm) in bil. carotid space and bil. posterior cervical space.
LN2: Presence of small lymph nodes in bil. carotid space and bil. posterior cervical space, the maximal size about 1 cm.
LN3: Presence of several lymph nodes in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal size about /// cm, R/O reactive or inflammatory hyperplasia, DDx: lymphoma, or nodal metastasis.
LN4: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), R/O nodal metastasis, DDx: infectious lymphadenitis, or lymphoma.
LN5: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), nodal metastasis considered.

3. Others:
Nasopharynx: Unremarkable
Oropharynx: Unremarkable
Hypopharynx: Unremarkable
Parotid gland: Unremarkable
Submandibular gland: Unremarkable
Thyroid gland: Unremarkable

IMPRESSION:
Oral cancer, image staging T N . AJCC 7th ed.
Oral mass, image staging T N if oral cancer proved. AJCC 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return

;; Oral-MR-AJCC7
::oralmr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
MRI of the skull base and neck was performed with a 1.5-T scanner:
METHOD: Sagittal T1WI and T2WI,
   Axial T1WI and T2WI with fat suppression,
   Coronal T1WI and T2WI with fat suppression,
   Gd-enhanced dynamic and conventional T1WI with fat suppression
SCAN RANGE: From the skull base to the low neck
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

PREVIOUS MRI of the skull base and neck: none.

FINDINGS:
1. Primary tumor/Lesion status:
Mass lesion, maximum dimension ----- cm, noted over ------.
[T1 (<= 2 cm), T2 (2~4 cm), T3 (>4 cm)]
Locoregional tumor extension/Lesion extension:
[T4a] Tumor/mass invades adjacent structures (eg, through cortical bone[mandible or maxilla], into deep [extrinsic] muscle of the tongue [genioglossus, hyoglossus, palatoglossus, and styloglossus], maxillary sinus, skin of face).
[T4b] Tumor/mass invades masticator space, pterygoid plates, or skull base and/or encases internal carotid artery.

2. Regional lymph nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

* right/left/bilateral level I > = 1.5cm: Nil, Yes, Necrosis
* right/left/bilateral level II > = 1.5 cm: Nil, Yes, Necrosis
* right/left/bilateral level III > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level IV > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level V > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VI > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VII > = 1cm: Nil, Yes, Necrosis

Positive: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane), confluent dimension about /// cm (craniocaudal), Necrosis
Equivocal: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane)
Negative:

[N0] No regional lymph node metastasis
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2] Metastasis in a single ipsilateral lymph node, larger than 3 cm but 6 cm or less in greatest dimension; or in multiple ipsilateral lymph nodes, none larger than 6 cm in greatest dimension; or in bilateral or contralateral lymph nodes, none larger than 6 cm in greatest dimension
[N2a] Metastasis in single ipsilateral lymph node larger than 3 cm but 6 cm or less in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none larger than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none larger than 6 cm in greatest dimension
[N3] Metastasis in a lymph node larger than 6 cm in greatest dimension

LN0: No evidence of bulky lymph nodes in ----- carotid space and ---- posterior cervical space.
LN1: Presence of small lymph nodes (less than 1cm) in bil. carotid space and bil. posterior cervical space.
LN2: Presence of small lymph nodes in bil. carotid space and bil. posterior cervical space, the maximal size about 1 cm.
LN3: Presence of several lymph nodes in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal size about /// cm, R/O reactive or inflammatory hyperplasia, DDx: lymphoma, or nodal metastasis.
LN4: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), R/O nodal metastasis, DDx: infectious lymphadenitis, or lymphoma.
LN5: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), nodal metastasis considered.

3. Others:
Nasopharynx: Unremarkable
Oropharynx: Unremarkable
Hypopharynx: Unremarkable
Parotid gland: Unremarkable
Submandibular gland: Unremarkable
Thyroid gland: Unremarkable

Presence of increased bone marrow signal intensity on T1WI over  ------, compatible with post radiation change.
Increased signal intensity over  -----------, mastoid air sinus on T2WI, in favor of mastoiditis or fluid collection in the mastoid.

IMPRESSION:
Oral cancer, image staging T N . AJCC 7th ed.
Oral mass, image staging T N if oral cancer proved. AJCC 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return

;; NPC-CT-AJCC
::npcct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Noncontrast and (2) Post-contrast enhancement
SCAN RANGE: axial plane from the skull base to the low neck with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS MRI/CT of the skull base and neck: no/2008-09-24

FINDINGS:
Primary tumor status and locoregional extension
[T1] Tumor confined to the nasopharynx, or extends to oropharynx and/or nasal cavity without parapharyngeal extension
[T2] Tumor with parapharyngeal extension.
[T3] Tumor involves bony structures of skull base and/or paranasal sinuses.
[T4] Tumor with intracranial extension and/or involvement of cranial nerves, hypopharynx, orbit, or with extension to the infratemporal fossa/masticator space.

2. Regional lymph nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
retropharyngeal region
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

* right/left/bilateral level I > = 1.5cm: Nil, Yes, Necrosis
* right/left/bilateral level II > = 1.5 cm: Nil, Yes, Necrosis
* right/left/bilateral level III > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level IV > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level V > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VI > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VII > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral retropharyngeal > = 0.8 cm: Nil, Yes, Necrosis
* right/left/bilateral supraclavicular > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral parotid > = 1cm: Nil, Yes, Necrosis

Positive: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane), confluent dimension about /// cm (craniocaudal), with cental necrosis
Equivocal: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane)
Negative:

[NX] Regional lymph nodes cannot be assessed.
[N0] No evidence of regional lymph node metastasis.
[N1] Unilateral metastasis in lymph node(s), 6 cm or less in greatest dimension, above the supraclavicular fossa, and/or unilateral or bilateral, retropharyngeal lymph nodes, 6 cm or less, in greatest dimension.
[N2] Bilateral metastasis in lymph node(s), 6 cm or less in greatest dimension, above the supraclavicular fossa
[N3] Metastasis to 1 or more lymph nodes that are larger than 6 cm and/or extension to the supraclavicular fossa
[N3a] Larger than 6 cm
[N3b] Extension to the supraclavicular fossa

LN0: No evidence of bulky lymph nodes in ----- carotid space and ---- posterior cervical space.
LN1: Presence of small lymph nodes (less than 1cm) in bil. carotid space and bil. posterior cervical space.
LN2: Presence of small lymph nodes in bil. carotid space and bil. posterior cervical space, the maximal size about 1 cm.
LN3: Presence of several lymph nodes in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal size about /// cm, R/O reactive or inflammatory hyperplasia, DDx: lymphoma, or nodal metastasis.
LN4: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), R/O nodal metastasis, DDx: infectious lymphadenitis, or lymphoma.
LN5: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), nodal metastasis considered.

3. Others:
Oropharynx: Unremarkable
Oral cavity: Unremarkable / Limited film interpretation due to dental artifacts
Hypopharynx: Unremarkable
Parotid gland: Unremarkable
Submandibular gland: Unremarkable
Thyroid gland: Unremarkable

Increased soft tissue density over  -----------, mastoid air sinus, in favor of mastoiditis or fluid collection in the mastoid.

IMPRESSION:
Nasopharyngeal cancer, imaging staging T N. AJCC 7th ed.
Nasopharyngeal mass, Imaging staging T N if nasopharyngeal cancer proved. AJCC 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return


;; NPC-MR-AJCC
::npcmr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
MRI of the skull base and neck was performed with a 1.5-T scanner:
METHOD: Sagittal T1WI and T2WI,
   Axial T1WI and T2WI with fat suppression,
   Coronal T1WI and T2WI with fat suppression,
   Gd-enhanced dynamic and conventional T1WI with fat suppression
SCAN RANGE: From the skull base to the low neck
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

PREVIOUS MRI/CT of the skull base and neck: no/2008-09-24

FINDINGS:
Primary tumor status and locoregional extension
[T1] Tumor confined to the nasopharynx, or extends to oropharynx and/or nasal cavity without parapharyngeal extension
[T2] Tumor with parapharyngeal extension.
[T3] Tumor involves bony structures of skull base and/or paranasal sinuses.
[T4] Tumor with intracranial extension and/or involvement of cranial nerves, hypopharynx, orbit, or with extension to the infratemporal fossa/masticator space.

[T4] Tumor over the nasopharynx (more on left), left posterior nasal cavity and left parapharyngeal and left pterygopalatine fissure extension, involves bony structures of skull base (clivus, occipital condyle, more on left) with intracranial extension and involvement of left hypoglossal canal, left parasella cavernous sinus and left temporal base dura region.

[T4] Hx:13699837  A large tumor mass lesion involves nasopharynx(more on left side), left parapharyngeal space, left masticator space, left posterior nasal cavity, left upper oropharyngeal region, left retromaxillary space, left retropharyngeal space, bilateral  perivertebral spaces and left pterygopalatine fossa. Also, the tumor shows direct invasion to the nasopharyngeal roof, left skull base and clivus. This tumor also shows intracranial extension ro left temporal base region. Encasement of left internal carotid artery in the lacerum portion is noted.

2. Regional lymph nodes:

   ========================
     # level I   : right (-);  left(-)
     # level II  : right (-);  left(-)
     # level III : right (-);  left(-)
     # level IV : right (-);  left(-)
     # level V  : right (-);  left(-)
     # level VI : right (-);  left(-)
     # level VII: right (-);  left(-)
     ========================

* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
retropharyngeal region
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

* right/left/bilateral level I > = 1.5cm: Nil, Yes, Necrosis
* right/left/bilateral level II > = 1.5 cm: Nil, Yes, Necrosis
* right/left/bilateral level III > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level IV > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level V > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VI > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral level VII > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral retropharyngeal > = 0.8 cm: Nil, Yes, Necrosis
* right/left/bilateral supraclavicular > = 1cm: Nil, Yes, Necrosis
* right/left/bilateral parotid > = 1cm: Nil, Yes, Necrosis

Positive: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane), confluent dimension about /// cm (craniocaudal), with central necrosis
Equivocal: right/left/bilateral, level-----, the maximal dimension about /// cm (short axis in axial plane)
Negative:

[NX] Regional lymph nodes cannot be assessed.
[N0] No evidence of regional lymph node metastasis.
[N1] Unilateral metastasis in lymph node(s), 6 cm or less in greatest dimension, above the supraclavicular fossa, and/or unilateral or bilateral, retropharyngeal lymph nodes, 6 cm or less, in greatest dimension.
[N2] Bilateral metastasis in lymph node(s), 6 cm or less in greatest dimension, above the supraclavicular fossa
[N3] Metastasis to 1 or more lymph nodes that are larger than 6 cm and/or extension to the supraclavicular fossa
[N3a] Larger than 6 cm
[N3b] Extension to the supraclavicular fossa

LN0: No evidence of bulky lymph nodes in ----- carotid space and ---- posterior cervical space.
LN1: Presence of small lymph nodes (less than 1cm) in bil. carotid space and bil. posterior cervical space.
LN2: Presence of small lymph nodes in bil. carotid space and bil. posterior cervical space, the maximal size about 1 cm.
LN3: Presence of several lymph nodes in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal size about /// cm, R/O reactive or inflammatory hyperplasia, DDx: lymphoma, or nodal metastasis.
LN4: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), R/O nodal metastasis, DDx: infectious lymphadenitis, or lymphoma.
LN5: Presence of multiple lymph nodes with variable size, some confluence and central necrosis in bil./right/left carotid space and bil./right/left posterior cervical space (level --------) noted, the maximal dimension about /// cm (craniocaudal), nodal metastasis considered.

3. Others:
Oropharynx: Unremarkable
Oral cavity: Unremarkable / Limited film interpretation due to dental artifacts
Hypopharynx: Unremarkable
Parotid gland: Unremarkable
Submandibular gland: Unremarkable
Thyroid gland: Unremarkable

Presence of increased bone marrow signal intensity on T1WI over  ------, compatible with post radiation change.
Increased signal intensity over  -----------, mastoid air sinus on T2WI, in favor of mastoiditis or fluid collection in the mastoid.

IMPRESSION:
Nasopharyngeal cancer, imaging staging T N. AJCC 7th ed.
Nasopharyngeal mass, Imaging staging T N if nasopharyngeal cancer proved. AJCC 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return

;; Larynx-CT-AJCC
::larynxct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Noncontrast and (2) Post-contrast enhancement
SCAN RANGE: axial plane from the skull base to the low neck with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS MRI/CT of the skull base and neck: no/2008-09-24

FINDINGS:
Primary tumor status and locoregional extension
[T1] Tumor limits to vocal cord(s) (may involve anterior or posterior commissure), with normal mobility.
T1a = limited to one vocal cord;
T1b = involves both vocal cords.
[T2] Tumor extends to supraglottis, and/or subglottis, and/or with impaired vocal cord mobility.
[T3] Tumor limits to larynx with vocal cord fixation and/or invasion of paraglottic space, and/or inner cortex of the thyroid cartilage.
[T4a] Tumor invades through thyroid cartilage and/or tissues beyond larynx. (e.g., trachea, soft tissues of neck including deep extrinsic muscle of the tongue, strap muscles, thyroid, or esophagus)
[T4b] Tumor invades prevertebral space, encases carotid artery, or invades mediastinal structures.

Cervical nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

[NX] Regional lymph nodes cannot be assessed.
[N0] No evidence of regional lymph node metastasis.
[N1] Metastasis in a single ipsilateral (same side) lymph node, 3 cm or less in size.
[N2a] Metastasis in a single ipsilateral (same side) lymph node more than 3 cm but not more than 6 cm in greatest dimension.
[N2b] Metastasis in multiple ipsilateral (same side) lymph nodes, none more than 6 cm in greatest dimension.
[N2c] Metastasis in bilateral (both) or contralateral (opposite side) lymph nodes, none more than 6 cm in greatest dimension.
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension.

Others:
Nasopharynx: not unusual
Orapharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifacts
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual

Presence of increased bone marrow signal intensity on T1WI over  ------, compatible with post radiation change.
Increased signal intensity over  -----------, mastoid air sinus on T2WI, in favor of mastoiditis or fluid collection in the mastoid.

IMPRESSION:
Glottic cancer, Image staging T3N2Mx.  AJCC 2009, 7th ed.
Glottic mass, Image staging T3N2Mx if glottic cancer proved. AJCC 2009, 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return

;; Larynx-MR-JACC
::larynxmr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
MRI of the skull base and neck was performed with a 1.5-T/3.0-T scanner:
METHOD: Sagittal T1WI and T2WI, Axial T1WI and T2WI with fat suppression, Coronal T1WI and T2WI with fat suppression, Post Gd-enhanced dynamic and conventional T1WI with
fat suppression
SCAN RANGE: from the skull base to the low neck
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

PREVIOUS MRI/CT of the skull base and neck: no/2008-09-24

FINDINGS:
Primary tumor status and locoregional extension
[T1] Tumor limits to vocal cord(s) (may involve anterior or posterior commissure), with normal mobility.
T1a = limited to one vocal cord;
T1b = involves both vocal cords.
[T2] Tumor extends to supraglottis, and/or subglottis, and/or with impaired vocal cord mobility.
[T3] Tumor limits to larynx with vocal cord fixation and/or invasion of paraglottic space, and/or inner cortex of the thyroid cartilage.
[T4a] Tumor invades through thyroid cartilage and/or tissues beyond larynx. (e.g., trachea, soft tissues of neck including deep extrinsic muscle of the tongue, strap muscles, thyroid, or esophagus)
[T4b] Tumor invades prevertebral space, encases carotid artery, or invades mediastinal structures.

Cervical nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

[NX] Regional lymph nodes cannot be assessed.
[N0] No evidence of regional lymph node metastasis.
[N1] Metastasis in a single ipsilateral (same side) lymph node, 3 cm or less in size.
[N2a] Metastasis in a single ipsilateral (same side) lymph node more than 3 cm but not more than 6 cm in greatest dimension.
[N2b] Metastasis in multiple ipsilateral (same side) lymph nodes, none more than 6 cm in greatest dimension.
[N2c] Metastasis in bilateral (both) or contralateral (opposite side) lymph nodes, none more than 6 cm in greatest dimension.
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension.

Others:
Nasopharynx: not unusual
Orapharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifacts
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual

Presence of increased bone marrow signal intensity on T1WI over  ------, compatible with post radiation change.
Increased signal intensity over  -----------, mastoid air sinus on T2WI, in favor of mastoiditis or fluid collection in the mastoid.

IMPRESSION:
Glottic cancer, Image staging T3N2Mx.  AJCC 2009, 7th ed.
Glottic mass, Image staging T3N2Mx if glottic cancer proved. AJCC 2009, 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return


;; Hypo-CT-AJCC
::hypoct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Non-contrast and (2) Contrast-enhanced
SCAN RANGE: Axial plane from the skull base to the thoracic inlet with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS CT of the skull base and neck:

FINDINGS:
Primary Tumor (T)
[T1] Tumor limited to one subsite of hypopharynx and/or 2 cm or less in greatest dimension
[T2] Tumor invades more than one subsite of hypopharynx or an adjacent site, or measures more than 2 cm but not more than 4 cm in greatest dimension without fixation of hemilarynx
[T3] Tumor more than 4 cm in greatest dimension or with fixation of hemilarynx or extension to esophagus
[T4a] Moderately advanced local disease.
        Tumor invades thyroid/cricoid cartilage, hyoid bone, thyroid gland, or central compartment soft tissue*
[T4b] Very advanced local disease.
        Tumor invades prevertebral fascia, encases carotid artery, or involves mediastinal structures
* Central compartment soft tissue includes prelaryngeal strap muscles and subcutaneous fat.

Regional lymph nodes (N)
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2a] Metastasis in a single ipsilateral lymph node more than 3 cm but not more than 6 cm in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension
* Metastases at Level VII are considered regional lymph node metastases.

Nasopharynx: not unusual
Orapharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual

IMPRESSION:
Hypopharyngeal cancer, Image staging T3N2Mx
Hypopharyngeal mass, Image staging T3N2Mx if hypopharyngeal cancer proved.

SUGGESTION:
)
  Paste(MyForm)
Return


;; Hypo-MR-AJCC
::hypomr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
MRI of the skull base and neck was performed with a 1.5-T scanner:
METHOD: Sagittal T1WI and T2WI,
Axial T1WI and T2WI with fat suppression,
Coronal T1WI and T2WI with fat suppression,
Post Gd-enhanced dynamic and conventional T1WI with fat suppression
SCAN RANGE: From the skull base to the thoracic inlet
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

PREVIOUS MR of the skull base and neck:

FINDINGS:
Primary Tumor (T)
[T1] Tumor limited to one subsite of hypopharynx and/or 2 cm or less in greatest dimension
[T2] Tumor invades more than one subsite of hypopharynx or an adjacent site, or measures more than 2 cm but not more than 4 cm in greatest dimension without fixation of hemilarynx
[T3] Tumor more than 4 cm in greatest dimension or with fixation of hemilarynx or extension to esophagus
[T4a] Moderately advanced local disease.
        Tumor invades thyroid/cricoid cartilage, hyoid bone, thyroid gland, or central compartment soft tissue*
[T4b] Very advanced local disease.
        Tumor invades prevertebral fascia, encases carotid artery, or involves mediastinal structures
* Central compartment soft tissue includes prelaryngeal strap muscles and subcutaneous fat.

Regional lymph nodes (N)
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2a] Metastasis in a single ipsilateral lymph node more than 3 cm but not more than 6 cm in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension
* Metastases at Level VII are considered regional lymph node metastases.

Nasopharynx: not unusual
Orapharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual

IMPRESSION:
Hypopharyngeal cancer, Image staging T3N2Mx
Hypopharyngeal mass, Image staging T3N2Mx if hypopharyngeal cancer proved.

SUGGESTION:
)
  Paste(MyForm)
Return


;; Salivary-CT-AJCC
::salivaryct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Non-contrast and (2) Contrast-enhanced
SCAN RANGE: Axial plane from the skull base to the thoracic inlet with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS CT of the skull base and neck:
PREVIOUS MRI of the skull base and neck:

FINDINGS:
Primary Tumor (T)
[T1] Tumor 2 cm or less in greatest dimension without extraparenchymal extension*
[T2] Tumor more than 2 cm but not more than 4 cm in greatest dimension without extraparenchymal extension*
[T3] Tumor more than 4 cm and/or tumor having extraparenchymal extension*
[T4a] Moderately advanced disease
        Tumor invades skin, mandible, ear canal, and/or facial nerve
[T4b] Very advanced disease
        Tumor invades skull base and/or pterygoid plates and/or encases carotid artery
*Extraparenchymal extension is clinical or macroscopic evidence of invasion of soft tissues. Microscopic evidence alone does not constitute extraparenchymal extension for classification purposes.

Regional lymph nodes (N)
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2a] Metastasis in a single ipsilateral lymph node more than 3 cm but not more than 6 cm in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension

Nasopharynx: not unusual
Orapharynx: not unusual
Hypopharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual

IMPRESSION:
// cancer, Image staging T3N2Mx
// mass, Image staging T3N2Mx if // cancer proved.

SUGGESTION:
)
  Paste(MyForm)
Return


;; Salivary-MR-AJCC
::salivarymr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
MRI of the skull base and neck was performed with a 1.5-T scanner:
METHOD: Sagittal T1WI and T2WI,
Axial T1WI and T2WI with fat suppression,
Coronal T1WI and T2WI with fat suppression,
Post Gd-enhanced dynamic and conventional T1WI with fat suppression
SCAN RANGE: From the skull base to the thoracic inlet
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

PREVIOUS CT of the skull base and neck:
PREVIOUS MRI of the skull base and neck:

FINDINGS:
Primary Tumor (T)
[T1] Tumor 2 cm or less in greatest dimension without extraparenchymal extension*
[T2] Tumor more than 2 cm but not more than 4 cm in greatest dimension without extraparenchymal extension*
[T3] Tumor more than 4 cm and/or tumor having extraparenchymal extension*
[T4a] Moderately advanced disease
        Tumor invades skin, mandible, ear canal, and/or facial nerve
[T4b] Very advanced disease
        Tumor invades skull base and/or pterygoid plates and/or encases carotid artery
*Extraparenchymal extension is clinical or macroscopic evidence of invasion of soft tissues. Microscopic evidence alone does not constitute extraparenchymal extension for classification purposes.

Regional lymph nodes (N)
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2a] Metastasis in a single ipsilateral lymph node more than 3 cm but not more than 6 cm in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension

Nasopharynx: not unusual
Orapharynx: not unusual
Hypopharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual

IMPRESSION:
// cancer, Image staging T3N2Mx
// mass, Image staging T3N2Mx if // cancer proved.

SUGGESTION:
)
  Paste(MyForm)
Return


;; Oraph-CT-AJCC
::oraphct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Non-contrast and (2) Contrast-enhanced
SCAN RANGE: Axial plane from the skull base to the thoracic inlet with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS CT of the skull base and neck:

FINDINGS:
1. Primary Tumor (T)
[T1] Tumor 2 cm or less in greatest dimension
[T2] Tumor more than 2 cm but not more than 4 cm in greatest dimension
[T3] Tumor more than 4 cm in greatest dimension or extension to lingual surface of epiglottis
[T4a] Moderately advanced local disease.
         Tumor invades the larynx, extrinsic muscle of tongue, medial pterygoid, hard palate, or mandible*
[T4b] Very advanced local disease.
         Tumor invades lateral pterygoid muscle, pterygoid plates, lateral nasopharynx, or skull base or encases carotid artery
* Mucosal extension to lingual surface of epiglottis from primary tumors of the base of the tongue and vallecula does not constitute invasion of larynx.


2. Regional lymph nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
retropharyngeal region
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

[Nx] Regional lymph nodes cannot be assessed
[N0] No regional lymph node metastasis
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2] Metastasis in a single ipsilateral lymph node, more than 3 cm but not more than 6 cm in greatest dimension; or in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension; or in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N2a] Metastasis in single ipsilateral lymph node more than 3 cm but not more than 6 cm in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension

3. Others:
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Nasopharynx: not unusual
Orapharynx: not unusual
Hypopharynx: not unusual
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual


IMPRESSION:
Orapharyngeal cancer, Image staging T3N2Mx
Orapharyngeal mass, Image staging T3N2Mx if oropharyngeal cancer proved.

SUGGESTION:
)
  Paste(MyForm)
Return


;; Oraph-MR-AJCC
::oraphmr::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
MRI of the skull base and neck was performed with a 1.5-T scanner:
METHOD: Sagittal T1WI and T2WI,
   Axial T1WI and T2WI with fat suppression,
   Coronal T1WI and T2WI with fat suppression,
   Gd-enhanced dynamic and conventional T1WI with fat
   suppression
SCAN RANGE: From the skull base to the low neck
CONTRAST MEDIUM: IV route, 0.1mmol/kg, rate: 2.0 mL/sec

PREVIOUS MRI of the skull base and neck:

FINDINGS:
1. Primary Tumor (T)
[T1] Tumor 2 cm or less in greatest dimension
[T2] Tumor more than 2 cm but not more than 4 cm in greatest dimension
[T3] Tumor more than 4 cm in greatest dimension or extension to lingual surface of epiglottis
[T4a] Moderately advanced local disease.
         Tumor invades the larynx, extrinsic muscle of tongue, medial pterygoid, hard palate, or mandible*
[T4b] Very advanced local disease.
         Tumor invades lateral pterygoid muscle, pterygoid plates, lateral nasopharynx, or skull base or encases carotid artery
* Mucosal extension to lingual surface of epiglottis from primary tumors of the base of the tongue and vallecula does not constitute invasion of larynx.


2. Regional lymph nodes:
* right/left/bilateral level I, II, III, IV, V, VI, VII

* right/left/bilateral
retropharyngeal region
submandibular and submental space (level I)
carotid space (level II, III, IV)
posterior cervical space (level V)
anterior cervical space (level VI)
superior mediastinal space (level VII)

[Nx] Regional lymph nodes cannot be assessed
[N0] No regional lymph node metastasis
[N1] Metastasis in a single ipsilateral lymph node, 3 cm or less in greatest dimension
[N2] Metastasis in a single ipsilateral lymph node, more than 3 cm but not more than 6 cm in greatest dimension; or in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension; or in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N2a] Metastasis in single ipsilateral lymph node more than 3 cm but not more than 6 cm in greatest dimension
[N2b] Metastasis in multiple ipsilateral lymph nodes, none more than 6 cm in greatest dimension
[N2c] Metastasis in bilateral or contralateral lymph nodes, none more than 6 cm in greatest dimension
[N3] Metastasis in a lymph node more than 6 cm in greatest dimension

3. Others:
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Nasopharynx: not unusual
Orapharynx: not unusual
Hypopharynx: not unusual
Parotid gland: not unusual
Submandibular gland: not unusual
Thyroid gland: not unusual


IMPRESSION:
Orapharyngeal cancer, Image staging T3N2Mx
Orapharyngeal mass, Image staging T3N2Mx if oropharyngeal cancer proved.

SUGGESTION:
)
  Paste(MyForm)
Return



;; Thy-CT-AJCC
::thyct::
  MyOrder := CopyOrder()
  MyForm =
(
INDICATION: %MyOrder%
CT scan of head and neck was performed with a multi-slice CT scanner:
METHOD: (1) Non-contrast and (2) Contrast-enhanced
SCAN RANGE: Axial plane from the skull base to the thoracic inlet with 5-mm continuous scan slice thickness and coronal reconstruction
CONTRAST MEDIUM: IV route, volume: 100 mL, rate: 1.0 mL/sec

PREVIOUS CT of the skull base and neck: none.

FINDINGS:
1. Primary Tumor (T)
[T1] Tumor 2 cm or less in greatest dimension limited to the thyroid
[T1a] Tumor 1 cm or less, limited to the thyroid
[T1b] Tumor more than 1 cm but not more than 2 cm in greatest dimension, limited to the thyroid
[T2] Tumor more than 2 cm but not more than 4 cm in greatest dimension, limited to the thyroid
[T3] Tumor more than 4 cm in greatest dimension limited to the thyroid, or any tumor with minimal extrathyroid extension (e.g., extension to sternothyroid muscle or perithyroid soft tissues)
[T4a] Moderately advanced disease.
      Tumor of any size extending beyond the thyroid capsule to invade subcutaneous soft tissues, larynx, trachea, esophagus, or recurrent laryngeal nerve
[T4b] Very advanced disease.
      Tumor invades prevertebral fascia or encases carotid artery or mediastinal vessels

2. Regional lymph nodes (N)
Regional lymph nodes are the central compartment, lateral cervical, and upper mediastinal lymph nodes.
[N1a] Metastasis to Level VI (pretracheal, paratracheal, and prelaryngeal/Delphian lymph nodes)
[N1b] Metastasis to unilateral, bilateral, or contralateral cervical (Levels I, II, III, IV or V) or retropharyngeal or superior mediastinal lymph nodes (Level VII)

3. Others:
Nasopharynx: not unusual
Orapharynx: not unusual
Hypopharynx: not unusual
Oral cavity: not unusual/ limited film interpretation due to dental artifact
Parotid gland: not unusual
Submandibular gland: not unusual

IMPRESSION:
Thyroid tumor, image staging T3N1b if proved thyroid papillary carcinoma. AJCC 2009, 7th ed.
Thyroid cancer, image staging //. AJCC 2009, 7th ed.

SUGGESTION:
)
  Paste(MyForm)
Return
