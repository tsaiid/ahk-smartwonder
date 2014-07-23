; SPG
::spg::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  GetSpgOcr2(AccNo, tabIframe2)

  RtVO := tabIframe2.document.getElementById("ocr_spg_right_VO") ? tabIframe2.document.getElementById("ocr_spg_right_VO").value : "___"
  RtVC := tabIframe2.document.getElementById("ocr_spg_right_VC") ? tabIframe2.document.getElementById("ocr_spg_right_VC").value : "___"
  RtAF := tabIframe2.document.getElementById("ocr_spg_right_AF") ? tabIframe2.document.getElementById("ocr_spg_right_AF").value : "___"
  LtVO := tabIframe2.document.getElementById("ocr_spg_left_VO") ? tabIframe2.document.getElementById("ocr_spg_left_VO").value : "___"
  LtVC := tabIframe2.document.getElementById("ocr_spg_left_VC") ? tabIframe2.document.getElementById("ocr_spg_left_VC").value : "___"
  LtAF := tabIframe2.document.getElementById("ocr_spg_left_AF") ? tabIframe2.document.getElementById("ocr_spg_left_AF").value : "___"

  MyForm =
(
Pneumo Maximum Venous Outflow study of lower limbs
FINDINGS:
-- R't VO/VC/AF: %RtVO%/%RtVC%/%RtAF%
-- L't VO/VC/AF: %LtVO%/%LtVC%/%LtAF%
COMMENT:
-- Low probability of deep venous occlusion of bilateral lower limbs.
............................................................
Abbreviation: Venous Outflow (VO, `%/min); Venous Capacitance (VC, `%); Arterial inflow (`%/min).
)

  Paste(MyForm, false)
Return