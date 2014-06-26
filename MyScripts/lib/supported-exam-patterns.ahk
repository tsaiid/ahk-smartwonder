; My Lib

SupportedExamPatterns() {
  patterns := {   CXR:          "i)chest (pa|ap|& kub)"
                , KUBLSpine:    "KUB, L-Spine"
                , KUB:          "i)kub"
                , CSpineApLat:  "C-Spine AP, LAT"
                , CSpineObl:    "C-Spine both obliques"
                , CSpineFlxExt: "C-Spine lateral flex\."
                , CSpineMouth:  "C-Spine open mouth"
                , TSpineApLat:  "T-Spine AP, LAT"
                , LSpineApLat:  "L-Spine AP[,\+] LAT"
                , LSpineFlxExt: "L-Spine LAT\. \(Flex\. & Ext\.\)"
                , LSpineLat:    "L-Spine LAT"
                , ToeRt:        "Toe\(s\) RT"
                , ToeLt:        "Toe\(s\) LT"
                , FootRt:       "Foot RT"
                , FootLt:       "Foot LT"
                , AnkleRt:      "Ankle RT"
                , AnkleLt:      "Ankle LT"
                , KneeRt:       "Knee RT"
                , KneeLt:       "Knee LT"
                , LowerLegRt:   "Lower leg RT including 2 joints"
                , LowerLegLt:   "Lower leg LT including 2 joints"
                , FemurRt:      "Femur, RT"
                , FemurLt:      "Femur, LT"
                , FingerRt:     "Finger\(s\) RT"
                , FingerLt:     "Finger\(s\) LT"
                , WristRt:      "Wrist RT"
                , WristLt:      "Wrist LT"
                , ForearmRt:    "Forearm RT"
                , ForearmLt:    "Forearm LT"
                , ElbowRt:      "Elbow RT"
                , ElbowLt:      "Elbow LT"
                , HumerusRt:    "Humerus RT"
                , HumerusLt:    "Humerus LT"
                , ClavicleRt:   "Clavicle RT"
                , ClavicleLt:   "Clavicle LT"
                , ShoulderRt:   "Shoulder RT"
                , ShoulderLt:   "Shoulder LT"
                , THRRtHip:     "THR \+ RT hip"
                , THRLtHip:     "THR \+ LT hip"
                , THRAP:        "THR, AP view"
                , PelvisAP:     "Pelvis AP view"
                , PelvisInlet:  "Pelvis inlet view"
                , PelvisOutlet: "Pelvis outlet view"
                , CTAChest:     "CTA, Chest-Aorta, PE"
                , CTChest:      "CT chest (with/)?no contrast" }
  Return patterns
}