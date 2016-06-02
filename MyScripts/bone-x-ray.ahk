; For Bone Plain Film
::bok::No joint space narrowing, dislocation, or fracture.{Enter}
::bok1::No obvious dislocation or fracture.
::bok2::No obvious bony lesion.
::djdl::DJD change of L-spine.
::djdt::DJD change of T-spine.
::djdtl::DJD change of T- and L-spine.
::oak0::Mild joint space narrowing at medial compartment of knee joint.
::oak1a::Mild joint space narrowing, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage I.
::oak1b::Mild joint space narrowing, marginal osteophyte formation, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage I.
::oak1::Mild joint space narrowing, subchondral sclerosis, marginal osteophyte formation, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage I.
::oak2::Joint space narrowing, subchondral sclerosis, marginal osteophyte formation, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage II.
::oak2a::Joint space narrowing, marginal osteophyte formation, especially at medial compartment of knee joint, compatible with osteoarthrosis, stage II.
::oak3::Severe joint space narrowing, subchondral sclerosis, marginal osteophyte formation, at knee joint, compatible with osteoarthrosis, stage III.
::oah::Superior joint space narrowing, subchondral sclerosis, subchondral cyst formation, osteophyte formation, in favor of osteoarthrosis of _ hip.
::scc::subchondral cyst
::scs::subchondral sclerosis
::spef::suprapatellar effusion
::jef::joint effusion
::patok::No lateral tilting or subluxation of bilateral patellae. {Enter}No PF joint space narrowing.
::lpatok::No lateral tilting or subluxation of left patella. No PF joint space narrowing.
::rpatok::No lateral tilting or subluxation of right patella. No PF joint space narrowing.
::pats::Mild lateral subluxation of bilateral patellae, with mild PF joint space narrowing at lateral facet.
::lpats::Mild lateral subluxation of left patella, with mild PF joint space narrowing at lateral facet.
::rpats::Mild lateral subluxation of right patella, with mild PF joint space narrowing at lateral facet.
::patt::Mild lateral tilting of bilateral patellae, with mild PF joint space narrowing at lateral facet.
::lpatt::Mild lateral tilting of left patella, with mild PF joint space narrowing at lateral facet.
::rpatt::Mild lateral tilting of right patella, with mild PF joint space narrowing at lateral facet.
::patts::Lateral tilting and subluxation of bilateral patellae, with severe PF joint space narrowing, subchondral sclerosis and marginal osteophyte formation at lateral facet.
::patts0::Mild lateral tilting and subluxation of bilateral patellae, with PF joint space narrowing at lateral facet.
::acrd::Lateral downsloping of the acromion, narrowing the acromiohumeral distance, which may be associated with impingement of the supraspinatus tendon.
::acrok::No lateral downsloping or hooking of the acromion.
::acrsp::Presence of subacromial spur.
::shok::No limitation in internal/external rotation of the shoulder.
::pcsp::Post instrument fixation at cervical spine.
::pcsp1::Prevertebral soft tissue swelling. May be due to recent operation.
::pvsts::Mild prevertebral soft tissue swelling, may be due to recent operation.
::plsp::Post instrument fixation at lumbar spine.
::plsp0::Post laminectomy, transpedicular screws, rods fixation at L1-2, L2-3, L3-4, L4-5, L5-S1.{Enter}Post interbody cage placement at L1-2, L2-3, L3-4, L4-5, L5-S1.
::spok::No disc space narrowing, spondylolisthesis, or fracture.
::oaf::Joint space narrowing and marginal osteophyte formation, involving several DIP and PIP joints. These findings are consistent with osteoarthritis.
::calsp::Presence of calcaneal spurs at the insertions of the Achilles tendon and the plantar fascia.
::calspp::Presence of calcaneal spur at the insertion of the plantar fascia.
::calspa::Presence of calcaneal spur at the insertion of the Achilles tendon.
::nabl::No active bone lesion.
::rthr::s/p right total hip replacement.
::lthr::s/p left total hip replacement.
::bthr::s/p bilateral total hip replacements.
::rhha::s/p right hip hemiarthroplasty.
::lhha::s/p left hip hemiarthroplasty.
::bhha::s/p bilateral hip hemiarthroplasties.
::rtka::s/p right total knee arthroplasty.
::ltka::s/p left total knee arthroplasty.
::btka::s/p bilateral total knee arthroplasties.
::orif::s/p screw and plate fixation.
::fr::fracture
::frs::fractures
::clfr::clavicular fracture
::rdhs::s/p right dynamic hip screw fixation.
::ldhs::s/p left dynamic hip screw fixation.
::bdhs::s/p bilateral dynamic hip screw fixation.
::js::joint space
::jsn::joint space narrowing
::ds::disc space
::dsn::disc space narrowing `
::mof::marginal osteophyte formation
::hs::in healing stage
::bu::bone union
::mu::malunion
::pbu::partial bone union
::wol::without loosening.
::anb::accessory navicular bone.
::l4::Sacralization of L5 vertebra.
::l6::Presence of L6 (lumbarization of S1).
::sij::sacroiliac joint
::acj::acromioclavicular joint
::sts::soft tissue swelling
::sijok::No evidence of blurring, sclerosis, or bone erosion over bilateral sacroiliac joints.
::wd::wedge deformity
::opc::osteoporotic change
::gopc::generalized osteoporotic change
::avn::avascular necrosis
::lhd::A drain at left hip region.
::rhd::A drain at right hip region.
::u+::Positive ulnar variance.
::u-::Negative ulnar variance.
::hm::hypermobility
::noas::No obvious squaring of the vertebral bodies.
::gvr::genu varus
::gvg::genu valgus
::hvr::hallux varus
::hvg::hallux valgus
::if::internal fixation
::ef::external fixation
::c7::The C7 vertebra is blocked by the shoulder shadow with limited evaluation.

; Multiline
::flat::
  MyForm =
(
Lateral projection of the foot with weight-bearing:

The angle formed by the inferior axis of the calcaneus and 5th metatarsal shaft measures _____ degree on the right side, and _____ degree on the left side.
)
  Paste(MyForm)
Return

::avn4::
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

::avn5::Radiography findings include narrowing of the joint space, osteoarthritis with sclerosis of acetabulum, and marginal osteophytes.
::avn6::
  MyForm =
(
Extensive destruction of the femoral head and joint, compatible with avascular necrosis, stage VI.

Ref:
Findings include extensive destruction of the femoral head and joint.
)
  Paste(MyForm)
Return

::djdc::
  MyForm =
(
DJD of Cervical spine:
  - Osteophyte formation:
  - Disk space narrowing:
  - Prominant unco-vertebral joint:
  - Encroachment of neuroforamen:
  - Anterolisthesis: nil
  - Retrolisthesis: nil
)
  Paste(MyForm)
Return

::sco::
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

::lld::
  MyForm =
(
Triple film of lower extremities in standing AP projection :
  1. Evidence of leg length discrepancy :
     Rt low limb measures _____ cm
     Lt low limb measures _____ cm
     LLD : ____ cm
  2. No evidence of leg length discrepancy.

  3. The angle between lower limb mechanical axis and tibial shaft axis:
     Rt knee: ----- degrees varus/valgus
     Lt knee: ----- degrees varus/valgus
)
  ;Paste(MyForm)
  hParentWnd := WinExist("A")
  LLDForm()
Return

::lstv::
  MyForm =
(
Lumbosacral Transitional Vertebrae, _ side, type Ia/IIa/IIIa.
Lumbosacral Transitional Vertebrae, type Ib/IIb/IIIb.
Lumbosacral Transitional Vertebrae, type IV.
)
  Paste(MyForm)
Return
