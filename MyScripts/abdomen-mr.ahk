; Abdomen MR Forms

;; General
::amr-mrcp::
  MyOrder := CopyOrder()
  MyForm =
(
MR of the pancreas and biliary tree.

Indication: %MyOrder%

Scanning Protocol:
 -Axi FSE T2+FS, 6-7mm/1mm
 -MRCP, thin 1.6mm/0.8m overlapped, MIP coronal reconstruction.
 -DWI
 -Cor FIESTA +FS, Large FOV
 -Axi Dynamic LAVA 3D, 0, 25, and 75 th seconds, 5-mm slice.

Findings:

Impression:

)
  Paste(MyForm)
Return
