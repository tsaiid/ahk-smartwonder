; SPG
::spg::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value
  OrderId = OrderDiag_%accNo%
  OrderDiag := tabIframe2.document.getElementById(OrderId).value

  GetSpgOcr2(AccNo, tabIframe2)

  RtVO := tabIframe2.document.getElementById("ocr_spg_right_vo") ? tabIframe2.document.getElementById("ocr_spg_right_vo").value : "___"
  RtVC := tabIframe2.document.getElementById("ocr_spg_right_vc") ? tabIframe2.document.getElementById("ocr_spg_right_vc").value : "___"
  RtAF := tabIframe2.document.getElementById("ocr_spg_right_af") ? tabIframe2.document.getElementById("ocr_spg_right_af").value : "___"
  LtVO := tabIframe2.document.getElementById("ocr_spg_left_vo") ? tabIframe2.document.getElementById("ocr_spg_left_vo").value : "___"
  LtVC := tabIframe2.document.getElementById("ocr_spg_left_vc") ? tabIframe2.document.getElementById("ocr_spg_left_vc").value : "___"
  LtAF := tabIframe2.document.getElementById("ocr_spg_left_af") ? tabIframe2.document.getElementById("ocr_spg_left_af").value : "___"

  ; interpretation
  ;; VO < 30 -> suspicious of DVT
  ;; VO > 100 and clinically has varicose vein -> c/w venous insufficiency
  has_varicose := RegExMatch(OrderDiag, "i)varicose")
  If (RtVO < 30 || LtVO < 30) {
    If (RtVO < 30) {
      side := (LtVO < 30) ? "bilateral" : "RT"
    } Else {
      side := "LT"
    }
    limb_text := (side = "bilateral") ? "lower limbs" : "lower limb"

    comment = -- Suspicion of deep venous occlusion of %side% %limb_text%. Suggest correlate with color Doppler ultrasound.
  }  Else If (has_varicose && (RtVO > 100 || LtVO > 100)) {
    If (RtVO > 100) {
      side := (LtVO > 100) ? "bilateral" : "RT"
    } Else {
      side := "LT"
    }
    side_text := (side = "bilateral") ? "sides" : "side"

    comment = c/w venous insufficiency, %side% %side_text%.
  }
  Else {
    comment = -- Low probability of deep venous occlusion of bilateral lower limbs.
  }

  MyForm =
(
Pneumo Maximum Venous Outflow study of lower limbs
FINDINGS:
-- R't VO/VC/AF: %RtVO%/%RtVC%/%RtAF%
-- L't VO/VC/AF: %LtVO%/%LtVC%/%LtAF%
COMMENT:
%comment%
............................................................
Abbreviation: Venous Outflow (VO, `%/min); Venous Capacitance (VC, `%); Arterial inflow (`%/min).
)

  Paste(MyForm, false)
Return

; SEG
::seg::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  GetSpgOcr2(AccNo, tabIframe2)

  RtABI := StrLen(tabIframe2.document.getElementById("ocr_seg_right_abi").value) ? tabIframe2.document.getElementById("ocr_seg_right_abi").value : "___"
  RtBrachial := StrLen(tabIframe2.document.getElementById("ocr_seg_right_brachial").value) ? tabIframe2.document.getElementById("ocr_seg_right_brachial").value : "___"
  RtUpperThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_right_upper_thigh").value) ? tabIframe2.document.getElementById("ocr_seg_right_upper_thigh").value : "___"
  RtLowerThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_right_lower_thigh").value) ? tabIframe2.document.getElementById("ocr_seg_right_lower_thigh").value : "___"
  RtCalf := StrLen(tabIframe2.document.getElementById("ocr_seg_right_calf").value) ? tabIframe2.document.getElementById("ocr_seg_right_calf").value : "___"
  RtAnkle := StrLen(tabIframe2.document.getElementById("ocr_seg_right_ankle").value) ? tabIframe2.document.getElementById("ocr_seg_right_ankle").value : "___"
  LtABI := StrLen(tabIframe2.document.getElementById("ocr_seg_left_abi").value) ? tabIframe2.document.getElementById("ocr_seg_left_abi").value : "___"
  LtBrachial := StrLen(tabIframe2.document.getElementById("ocr_seg_left_brachial").value) ? tabIframe2.document.getElementById("ocr_seg_left_brachial").value : "___"
  LtUpperThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_left_upper_thigh").value) ? tabIframe2.document.getElementById("ocr_seg_left_upper_thigh").value : "___"
  LtLowerThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_left_lower_thigh").value) ? tabIframe2.document.getElementById("ocr_seg_left_lower_thigh").value : "___"
  LtCalf := StrLen(tabIframe2.document.getElementById("ocr_seg_left_calf").value) ? tabIframe2.document.getElementById("ocr_seg_left_calf").value : "___"
  LtAnkle := StrLen(tabIframe2.document.getElementById("ocr_seg_left_ankle").value) ? tabIframe2.document.getElementById("ocr_seg_left_ankle").value : "___"

  MyForm =
(
SEGMENTAL ARTERIAL PRESSURE WITH DOPPLER OF LOWER LIMBS
FINDINGS:
-- R'T ABI: %RtABI%
-- L'T ABI: %LtABI%
MEASURED BP AT ARM/UPPER THIGH/LOWER THIGH/CALF/ANKLE (MMHG):
-- R'T: %RtBrachial%/%RtUpperThigh%/%RtLowerThigh%/%RtCalf%/%RtAnkle%
-- L'T: %LtBrachial%/%LtUpperThigh%/%LtLowerThigh%/%LtCalf%/%LtAnkle%
COMMENT:
-- Low probability of occlusive lesion in bilateral lower limbs.
)

  Paste(MyForm, false)
Return