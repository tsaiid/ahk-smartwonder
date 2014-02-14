; CT-guide Forms

;; Lung Biopsy
:O:ctg-lb::
ClipSave := ClipboardAll ; store clipboard data
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
6. Specimen:
   Formalin: x3; normal saline: x1;
   Bacterial culture swab: aerobic x1; anaerobic x1.

The patient was sent back to the ward under stable condition without complaint. Recommend close f/u patient's vital signs, bed rest and compression for at least 4 hours. F/U CXR 6 hours later.
)
Clipboard := MyForm
Loop,
{
  Sleep, 100
  If (Clipboard = MyForm)
    Break
}
Send, ^v
Clipboard := ClipSave ; restore clipboard data
ClipSave :=
Return