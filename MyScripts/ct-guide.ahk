; CT-guide Forms

;; Lung Biopsy
::ctg-lb::
  MyForm =
(
CT guide biopsy was performed under clinical request. The operation procedure and potential risk were well explained. Patient agreement and consensus were obtained.
Under CT guide, tissue specimens were smoothly taken for pathology examination.

1. Position:
2. Target lesions
   A. Location lobe:
   B. Main lesion size:  mm
   C. Cavity or central necrosis: Yes/No
   D. Pleural distance:  mm
3. Focal emphysema of lung parenchyma: No/Mild/Moderate/Severe
4. Patient cooperation: good/fair/poor
5. Complications:
   A. Pheumothorax: No/Minimal/Mild/Moderate/Severe; Aspiration for pneumothorax: Yes/No
   B. Focal hemorrhage: Yes/No
   C. Hemoptysis: No
   D. Chest tightness: No
   E. Asthma: No
6. Specimen: (4 attempts to biopsy)
   Formalin: x3; normal saline: x1;
   Bacterial culture swab: aerobic x1; anaerobic x1.

The patient was sent back to the ward under stable condition without complaint.
Recommend close f/u patient's vital signs, bed rest and compression for at least 4 hours.
F/U CXR 6 hours later.
)
  Paste(MyForm)
Return


;; Lung Biopsy, pigtail for pneumothorax
::ctg-lb-p::
  MyForm =
(
CT guide biopsy was performed under clinical request. The operation procedure and potential risk were well explained. Patient agreement and consensus were obtained.
Under CT guide, tissue specimens were smoothly taken for pathology examination.

1. Position:
2. Target lesions
   A. Location lobe:
   B. Main lesion size:  mm
   C. Cavity or central necrosis: Yes/No
   D. Pleural distance:  mm
3. Focal emphysema of lung parenchyma: No/Mild/Moderate/Severe
4. Patient cooperation: good/fair/poor
5. Complications:
   A. Pheumothorax: Mild/Moderate/Severe; Pigtail for pneumothorax: Yes, 6Fr.
   B. Focal hemorrhage: Yes
   C. Hemoptysis: No
   D. Chest tightness: No
   E. Asthma: No
6. Specimen: (4 attempts to biopsy)
   Formalin: x2; normal saline: x1; TB culture: x1.
   Bacterial culture swab: aerobic x1; anaerobic x1.

The patient was sent back to the ward under stable condition without complaint.
Recommend close f/u patient's vital signs, oxygen supplement, chest bottle with Emerson, bed rest and compression for at least 4 hours.
F/U CXR 6 hours later.
)
  Paste(MyForm)
Return


;; Drainage
::ctg-d::
  MyForm =
(
CT guide drainage was performed under clinical request. The operation procedure and potential risk were well explained. Patient agreement and consensus were obtained.
Under CT guide, tissue specimens were smoothly taken for pathology examination.

1. Position:
2. Target lesion:
3. Patient cooperation: good/fair/poor
4. Complications: nil.
5. Drain: 6 Fr one-step pigtail drain.
6. Specimen: pus.

The patient was sent back to the ward under stable condition without complaint.
)
  Paste(MyForm)
Return


;; Drainage
::ctg-b::
  MyForm =
(
CT guide biopsy was performed under clinical request. The operation procedure and potential risk were well explained. Patient agreement and consensus were obtained.
Under CT guide, tissue specimens were smoothly taken for pathology examination.

1. Position:
2. Target lesion:
3. Patient cooperation: good
4. Complications: nil.
5. Instrument: 18 G Biopsy needle in 17G coaxial needle.
6. Specimen:
    Formalin: x4

The patient was sent back to the ward under stable condition without complaint. Recommend close f/u patient's vital signs, bed rest and compression for at least 4 hours.
)
  Paste(MyForm)
Return
