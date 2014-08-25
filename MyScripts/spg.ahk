; SPG
::spg::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value
  OrderId = OrderDiag_%accNo%
  OrderDiag := tabIframe2.document.getElementById(OrderId).value

  GetSpgOcr2(AccNo, tabIframe2)

  RtVO := tabIframe2.document.getElementById("ocr_spg_right_vo")
        ? tabIframe2.document.getElementById("ocr_spg_right_vo").value : "___"
  RtVC := tabIframe2.document.getElementById("ocr_spg_right_vc")
        ? tabIframe2.document.getElementById("ocr_spg_right_vc").value : "___"
  RtAF := tabIframe2.document.getElementById("ocr_spg_right_af")
        ? tabIframe2.document.getElementById("ocr_spg_right_af").value : "___"
  LtVO := tabIframe2.document.getElementById("ocr_spg_left_vo")
        ? tabIframe2.document.getElementById("ocr_spg_left_vo").value : "___"
  LtVC := tabIframe2.document.getElementById("ocr_spg_left_vc")
        ? tabIframe2.document.getElementById("ocr_spg_left_vc").value : "___"
  LtAF := tabIframe2.document.getElementById("ocr_spg_left_af")
        ? tabIframe2.document.getElementById("ocr_spg_left_af").value : "___"

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

  RtABI := StrLen(tabIframe2.document.getElementById("ocr_seg_right_abi").value)
         ? tabIframe2.document.getElementById("ocr_seg_right_abi").value : "nil"
  RtBrachial := StrLen(tabIframe2.document.getElementById("ocr_seg_right_brachial").value)
              ? tabIframe2.document.getElementById("ocr_seg_right_brachial").value : "nil"
  RtUpperThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_right_upper_thigh").value)
                ? tabIframe2.document.getElementById("ocr_seg_right_upper_thigh").value : "nil"
  RtLowerThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_right_lower_thigh").value)
                ? tabIframe2.document.getElementById("ocr_seg_right_lower_thigh").value : "nil"
  RtCalf := StrLen(tabIframe2.document.getElementById("ocr_seg_right_calf").value)
          ? tabIframe2.document.getElementById("ocr_seg_right_calf").value : "nil"
  RtAnkle := StrLen(tabIframe2.document.getElementById("ocr_seg_right_ankle").value)
           ? tabIframe2.document.getElementById("ocr_seg_right_ankle").value : "nil"
  LtABI := StrLen(tabIframe2.document.getElementById("ocr_seg_left_abi").value)
         ? tabIframe2.document.getElementById("ocr_seg_left_abi").value : "nil"
  LtBrachial := StrLen(tabIframe2.document.getElementById("ocr_seg_left_brachial").value)
              ? tabIframe2.document.getElementById("ocr_seg_left_brachial").value : "nil"
  LtUpperThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_left_upper_thigh").value)
                ? tabIframe2.document.getElementById("ocr_seg_left_upper_thigh").value : "nil"
  LtLowerThigh := StrLen(tabIframe2.document.getElementById("ocr_seg_left_lower_thigh").value)
                ? tabIframe2.document.getElementById("ocr_seg_left_lower_thigh").value : "nil"
  LtCalf := StrLen(tabIframe2.document.getElementById("ocr_seg_left_calf").value)
          ? tabIframe2.document.getElementById("ocr_seg_left_calf").value : "nil"
  LtAnkle := StrLen(tabIframe2.document.getElementById("ocr_seg_left_ankle").value)
           ? tabIframe2.document.getElementById("ocr_seg_left_ankle").value : "nil"


  ; Test Case
  ;RtABI := 1.13
  ;LtABI := 0.96
  ;RtBrachial := 128
  ;RtUpperThigh := "nil"
  ;RtLowerThigh := 168
  ;RtCalf := 150
  ;RtAnkle := 145
  ;LtBrachial := 112
  ;LtUpperThigh := "nil"
  ;LtLowerThigh := 170
  ;LtCalf := 135
  ;LtAnkle := 123


  ; format the form of measurements
  ;; generally, no bilateral upper thigh
  If (RtUpperThigh = "nil" && LtUpperThigh = "nil") {
    measure_form =
(
MEASURED BP AT ARM/LOWER THIGH/CALF/ANKLE (MMHG):
-- R'T: %RtBrachial%/%RtLowerThigh%/%RtCalf%/%RtAnkle%
-- L'T: %LtBrachial%/%LtLowerThigh%/%LtCalf%/%LtAnkle%
)
  } Else {
    measure_form =
(
MEASURED BP AT ARM/UPPER THIGH/LOWER THIGH/CALF/ANKLE (MMHG):
-- R'T: %RtBrachial%/%RtUpperThigh%/%RtLowerThigh%/%RtCalf%/%RtAnkle%
-- L'T: %LtBrachial%/%LtUpperThigh%/%LtLowerThigh%/%LtCalf%/%LtAnkle%
)
  }

  ;; comment
  ;;; select max upper arm BP
  If (RtBrachial = "nil") {
    RtBrachial := 0
  }
  If (LtBrachial = "nil") {
    LtBrachial := 0
  }
  ArmBP := (RtBrachial > LtBrachial) ? RtBrachial : LtBrachial

  RtValues := [RtUpperThigh, RtLowerThigh, RtCalf, RtAnkle]
  LtValues := [LtUpperThigh, LtLowerThigh, LtCalf, LtAnkle]

  ;;; find stenotic region
  stenotic_region_map := ["aortoiliac", "thigh", "popliteal", "calf"]

  RtStenosis := []
  Loop % RtValues.MaxIndex() {
    DeltaLimit := (RtABI < 0.9) ? "20" : "30"

    If (RtValues[A_Index] != "nil") {
      ; upper thigh use ratio as criteria
      If (A_Index = 1) {
        ratio := Round(RtValues[A_Index] / ArmBP, 2) + 0
        If (ratio < 0.9) {
          RtStenosis.Insert(stenotic_region_map[A_Index])
        }
      } Else {
        ; others use delta as criteria
        If (RtValues[A_Index-1] = "nil") {
          ratio := Round(RtValues[A_Index] / ArmBP, 2) + 0
          If (ratio < 0.9) {
            RtStenosis.Insert(stenotic_region_map[A_Index])
          }
        } Else {
          If (RtValues[A_Index-1] - RtValues[A_Index] >= DeltaLimit) {
            RtStenosis.Insert(stenotic_region_map[A_Index])
            ;MsgBox % RtStenosis
            ;Break
          }
        }
      }
    }
  }

  LtStenosis := []
  Loop % LtValues.MaxIndex() {
    DeltaLimit := (LtABI < 0.9) ? "20" : "30"

    If (LtValues[A_Index] != "nil") {
      ; upper thigh use ratio as criteria
      If (A_Index = 1) {
        ratio := Round(LtValues[A_Index] / ArmBP, 2) + 0
        If (ratio < 0.9) {
          LtStenosis.Insert(stenotic_region_map[A_Index])
        }
      } Else {
        ; others use delta as criteria
        If (LtValues[A_Index-1] = "nil") {
          ratio := Round(LtValues[A_Index] / ArmBP, 2) + 0
          If (ratio < 0.9) {
            LtStenosis.Insert(stenotic_region_map[A_Index])
          }
        } Else {
          If (LtValues[A_Index-1] - LtValues[A_Index] >= DeltaLimit) {
            LtStenosis.Insert(stenotic_region_map[A_Index])
            ;MsgBox % LtStenosis
            ;Break
          }
        }
      }
    }
  }

  comment := ""
  If (RtStenosis.MaxIndex() || LtStenosis.MaxIndex()) {
    If (RtStenosis.MaxIndex()) {
      RtStenosisText := ArrayStrJoin(RtStenosis)
      RegionText := "region"
      If (RtStenosis.MaxIndex() > 1) {
        RegionText .= "s"
      }
      comment .= "Suspicion of significant stenotic lesion at Rt " . RtStenosisText . " " . RegionText . ".`n"
    }
    If (LtStenosis.MaxIndex()) {
      LtStenosisText := ArrayStrJoin(LtStenosis)
      RegionText := "region"
      If (LtStenosis.MaxIndex() > 1) {
        RegionText .= "s"
      }
      comment .= "Suspicion of significant stenotic lesion at Lt " . LtStenosisText . " " . RegionText . ".`n"
    }
  } Else {
    comment = -- Low probability of occlusive lesion in bilateral lower limbs.
  }

  MyForm =
(
SEGMENTAL ARTERIAL PRESSURE WITH DOPPLER OF LOWER LIMBS
FINDINGS:
-- R'T ABI: %RtABI%
-- L'T ABI: %LtABI%
%measure_form%
COMMENT:
%comment%
)

  Paste(MyForm, false)
Return