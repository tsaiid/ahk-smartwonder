; For Bone Plain Film
:O:bok::No joint space narrowing, dislocation, or fracture.{Enter}
:O:djdl::DJD change of L-spine.{Enter}
:O:djdt::DJD change of T-spine.{Enter}
:O:djdtl::DJD change of T- and L-spine.{Enter}
:O:oak1::Mild joint space narrowing, subchondral sclerosis, marginal osteophyte formation, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage I.
:O:oak2::Joint space narrowing, subchondral sclerosis, marginal osteophyte formation, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage II.
:O:oak3::Joint space narrowing, subchondral sclerosis, marginal osteophyte formation, at knee joint, compatible with osteoarthrosis, stage III.
:O:spf::Presence of suprapatellar effusion.
:O:patok::No lateral tilting or subluxation of bilateral patellae. {Enter}No PF joint space narrowing.
:O:pats::Mild lateral subluxation of bilateral patellae, with mild PF joint space narrowing at lateral facet.
:O:patt::Mild lateral tilting of bilateral patellae, with mild PF joint space narrowing at lateral facet.
:O:patts::Lateral tilting and subluxation of bilateral patellae, with severe PF joint space narrowing, subchondral sclerosis and marginal osteophyte formation at lateral facet.
:O:acrd::Lateral downsloping of the acromion, narrowing the acromiohumeral distance, which may be associated with impingement of the supraspinatus tendon.
:O:acrok::No lateral downsloping or hooking of the acromion.
:O:acrsp::Presence of subacromial spur.
:O:shok::No limitation in internal/external rotation of the shoulder.
:O:p/csp::Post screws and plates fixation at L3~L6. {Enter}Post interbody cage placement at C3-4, C4-5, C5-6.{Up}{Left 5  }
:O:p/lsp::Post laminectomy, transpedicular screws, rods fixation at L2~L5. {Enter}Post interbody cage placement at L2-3, L3-4.{Up}{Right 16}
:O:spok::No disc space narrowing. No spondylolisthesis. No fracture.
:O:oaf::Joint space narrowing and marginal osteophyte formation, involving several DIP and PIP joints. These findings are consistent with osteoarthritis.
:O:calsp::Presence of calcaneal spurs at the insertions of the Achilles tendon and the plantar fascia.
:O:nabl::No active bone lesion.
:O:rthr::s/p right total hip replacement.
:O:lthr::s/p left total hip replacement.
:O:bthr::s/p bilateral total hip replacements.
:O:rhha::s/p right hip hemiarthroplasty.
:O:lhha::s/p left hip hemiarthroplasty.
:O:bhha::s/p bilateral hip hemiarthroplasties.
:O:rtka::s/p right total knee arthroplasty.
:O:ltka::s/p left total knee arthroplasty.
:O:btka::s/p bilateral total knee arthroplasties.
:O:orif::s/p screw and plate fixation.
:O:fr::fracture `
:O:frs::fractures `
:O:rdhs::s/p right dynamic hip screw fixation.
:O:ldhs::s/p left dynamic hip screw fixation.
:O:bdhs::s/p bilateral dynamic hip screw fixation.

; Multiline
:O:flat::
  MyForm =
(
Lateral projection of the foot with weight-bearing:

The angle formed by the inferior axis of the calcaneus and 5th metatarsal shaft measures _____ degree on the right side, and _____ degree on the left side.
)
  Paste(MyForm)
Return

:O:avn4::
  MyForm =
( %
Bilateral hips:
Collapse of femoral heads is present, and joint spaces are mild irregular. The findings are compatible with avascular necrosis, stage IV.

Flattening or collapse of femoral head is present.
Joint space may be irregular.
CT scanning is more sensitive than radiography.
Subclassification depends on the extent of collapsed surface, as follows:
        Stage IVa: Less than 15% of surface is collapsed.
        Stage IVb: Approximately 15-30% of surface is collapsed.
        Stage IVc: More than 30% of surface is collapsed.
)
  Paste(MyForm)
Return

:O:avn5::Radiography findings include narrowing of the joint space, osteoarthritis with sclerosis of acetabulum, and marginal osteophytes.
:O:avn6::
  MyForm =
(
Extensive destruction of the femoral head and joint, compatible with avascular necrosis, stage VI.

Ref:
Findings include extensive destruction of the femoral head and joint.
)
  Paste(MyForm)
Return

:O:djdc::
  MyForm =
(
DJD of Cervical spine:
  - Osteophyte formation:
  - Disk space narrowing:
  - Encroachment of neuroforamen:
  - Anterolisthesis:
  - Retrolisthesis:
)
  Paste(MyForm)
Return

:O:sco::
  MyForm =
(
Scoliosis :
1. Major curve
   extent:
   convex to:
   apex at:
   degree:
   rotation: ( + , - )
2. Second  (compensatory) curve
   extent:
   convex to:
   apex at:
   degree:
   rotation: ( +, - )
)
  Paste(MyForm)
Return
