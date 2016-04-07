; Function
DoSPGorSEG()
{
  wb := WBGet()
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]

  ; get current exam name
  tmpStr := frmTabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  currExamName := splittedTmpStr2

  If (currExamName = "SPG For vein") {
    DoSPG()
  } Else If (currExamName = "Segmental pressures - 3or4 Cuff") {
    DoSEG()
  } Else {
    MsgBox, Not supported exam type!
  }
}

; SPG
::spg::
  DoSPG()
Return

DoSPG()
{
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

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
  has_varicose := RegExMatch(OrderDiag, "i)varicose|spider")
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
}

; Temp Function
::ocr::
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value
  GetSpgOcr2(AccNo, tabIframe2)
  MsgBox, OCR done
Return

; SEG
::seg::
  DoSEG()
Return

DoSEG()
{
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
  measure_region_map := ["upper thigh", "lower thigh", "calf", "ankle"]
  high_pressure_region_map := ["aortoiliac", "femoral", "popliteal", "infragenicular"]
  stenotic_region_map := ["aortoiliac", "thigh", "popliteal", "calf"]
  HighPressureRegionCodeMap := { "1---": "upper thigh"
                               , "-2--": "lower thigh"
                               , "--3-": "calf"
                               , "---4": "ankle"
                               , "12--": "thigh"
                               , "1-3-": "upper thigh and calf"
                               , "1--4": "upper thigh and ankle"
                               , "-23-": "lower thigh and calf"
                               , "-2-4": "lower thigh and ankle"
                               , "--34": "calf and ankle"
                               , "123-": "thigh and calf"
                               , "12-4": "thigh and ankle"
                               , "1-34": "upper thigh, calf and ankle"
                               , "-234": "lower thigh, calf and ankle"
                               , "1234": "whole lower limb" }

  HighPressureArteryCodeMap := { "----": ""
                               , "1---": "infrainguinal"
                               , "-2--": "femoral"
                               , "--3-": "infragenicular"
                               , "---4": "infragenicular"
                               , "12--": "femoral"
                               , "1-3-": "infrainguinal"
                               , "1--4": "infrainguinal"
                               , "-23-": "femoral"
                               , "-2-4": "lower limb"
                               , "--34": "lower limb"
                               , "123-": "infrainguinal"
                               , "12-4": "infrainguinal"
                               , "1-34": "infrainguinal"
                               , "-234": "lower limb"
                               , "1234": "lower limb" }

  HighPressureStenosisCodeMap := { "1---": "upper thigh"
                                 , "-2--": "lower thigh"
                                 , "--3-": "popliteal"
                                 , "---4": "ankle"
                                 , "12--": "thigh"
                                 , "1-3-": "thigh and popliteal"
                                 , "1--4": "thigh and ankle"
                                 , "-23-": "popliteal"
                                 , "-2-4": "lower thigh and ankle"
                                 , "--34": "calf and ankle"
                                 , "123-": "thigh and calf"
                                 , "12-4": "thigh and ankle"
                                 , "1-34": ""
                                 , "-234": ""
                                 , "1234": "" }

  RtStenosis := []
  RtHighPressure := []
  RtHighPressureCode := ""
  HighPressureRegionCount := 0
  Loop % RtValues.MaxIndex() {
    ; Check if stenosis
    DeltaLimit := (RtABI < 0.9) ? "20" : "30"

    If (RtValues[A_Index] != "nil") {
      ; Check if high pressure
      If (RtValues[A_Index] >= 300) {
        HighPressureRegionCount += 1
        RtHighPressure[A_Index] := measure_region_map[A_Index]
        RtHighPressureCode .= A_Index
      } Else {
        RtHighPressure[A_Index] := ""
        RtHighPressureCode .= "-"
      }

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
          If (RtValues[A_Index-1] - RtValues[A_Index] >= DeltaLimit && RtValues[A_Index-1] < 300) {
            RtStenosis.Insert(stenotic_region_map[A_Index])
            ;MsgBox % RtStenosis
            ;Break
          }
        }
      }
    } Else {
      RtHighPressureCode .= "-"
    }
  }

  LtStenosis := []
  LtHighPressure := []
  LtHighPressureCode := ""
  Loop % LtValues.MaxIndex() {
    ; Check if stenosis
    DeltaLimit := (LtABI < 0.9) ? "20" : "30"

    If (LtValues[A_Index] != "nil") {
      ; Check if high pressure
      If (LtValues[A_Index] >= 300) {
        HighPressureRegionCount += 1
        LtHighPressure[A_Index] := measure_region_map[A_Index]
        LtHighPressureCode .= A_Index
      } Else {
        LtHighPressure[A_Index] := ""
        LtHighPressureCode .= "-"
      }

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
          If (LtValues[A_Index-1] - LtValues[A_Index] >= DeltaLimit && LtValues[A_Index-1] < 300) {
            LtStenosis.Insert(stenotic_region_map[A_Index])
            ;MsgBox % LtStenosis
            ;Break
          }
        }
      }
    } Else {
      LtHighPressureCode .= "-"
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
  } Else If (HighPressureRegionCount = 0) {
    comment = -- Low probability of occlusive lesion in bilateral lower limbs.
  }

  high_pressure := ""
  If (HighPressureRegionCount > 0) {
    TmpHPArr := []
    TmpHPAArr := []
    Loop % RtHighPressure.MaxIndex() {
      If (StrLen(RtHighPressure[A_Index]) || StrLen(LtHighPressure[A_Index])) {
        ; determine side
        If (StrLen(RtHighPressure[A_Index]) && StrLen(LtHighPressure[A_Index])) {
          side := "bilateral"
        } Else If (StrLen(RtHighPressure[A_Index])) {
          side := "right"
        } Else {
          side := "left"
        }

        HPRegion := measure_region_map[A_Index]
        ;HPArtery := high_pressure_region_map[A_Index]

        TmpHPArr.Insert(side . " " . HPRegion)
        ;TmpHPAArr.Insert(side . " " . HPArtery)
      }
    }

    If (RtHighPressureCode != "----")
      TmpHPAArr.Insert(HighPressureArteryCodeMap[RtHighPressureCode])
    If (LtHighPressureCode != "----")
      TmpHPAArr.Insert(HighPressureArteryCodeMap[LtHighPressureCode])

    region_text := (HighPressureRegionCount > 1 ? "regions" : "region")
    artery_text := (HighPressureRegionCount > 1 ? "arteries" : "artery")

    high_pressure_regions := ArrayStrJoin(TmpHPArr) . " " . region_text
    high_pressure_arteries := ArrayStrJoin(TmpHPAArr) . " " . artery_text
    high_pressure := "-- High pressure gradient at " . high_pressure_regions . ", probably due to wall calcification of " . high_pressure_arteries . " or truely significant stenosis."
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
%high_pressure%
)

  Paste(MyForm, false)
}
