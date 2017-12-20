::b::bilateral `
::lt::left `
::rt::right `
::ifo::in favor of `
::acw::as compared with `
::cpf::compression fracture
::cmf::comminuted fracture `
::cal::calcification
::si::(Ser/Img: ){Left}
::sao::small amount of `
::smao::small to moderate amount of `
::mao::moderate amount of `
::ntbd::nature to be determined.
::stbd::significance to be determined.
::ctbd::cause to be determined.
::het::heterogeneous
::hom::homogenous
::p::presence of `
::h::however, `
::r::residual `
::reg::regular `
::ireg::irregular `
::i::increased `
::d::decreased `
::e::enhancement
::ec::enhancing
::rec::recurrence
::w::with `
::wo::without `
::esp::especially `
::asp::aspiration
::cw::comsistent with `
::ow::otherwise, `
::rm::remarkable `
::urm::unremarkable `
::cnbd::cannot be determined
::cnbe::cannot be excluded
::sbe::should be excluded
::mcnbe::malignancy cannot be excluded.
::msbe::malignancy should be excluded.
::m::multiple `
::mf::multifocal `
::ml::multiloculated `
::s::several `
::n::nodule
::nr::nodular
::lr::linear
::nl::nodular lesions
::cn::calcified nodule
::cg::calcified granuloma
::rol::radiopaque lesion
::o::opacity
::g::granuloma
::l::lesion
::mod::moderate `
::sv::severe `
::mtm::mild to moderate
::mts::moderate to severe
::sl::slightly `
::sip::superimposed `
::pos::position
::pd::progressive disease
::sd::stable disease
::pr::partial response
::cr::complete response
::ap::arterial phase
::pvp::portovenous phase
::dp::delayed phase
::bd0::bone density
::ndlg::Nearly dislodgement is considered.
::eva::evaluation
::eso0::esophagus
::fb::foreign body

::pl::possibly `
::pb::probably `
::sf::suspicious for `
::ll::less likely

:c:f::findings
:c:IND::INDICATION:
:c:IND1::
  indicationStr := "INDICATION: " . CopyOrder()
  Paste(indicationStr)
Return
:c:CMP::COMPARISON:
:c:IMP::IMPRESSION:
:c:SG::SUGGESTION:
:c:FD::FINDINGS:

; recommendations
::sg::suggest
::cc::Suggest clinical correlation.
::cc0::clinical correlation
::fe::Suggest further evaluation.
::fe0::further evaluation
::feci::Suggest further evaluation if clinically indicated.
::fu::Suggest follow-up.
::fu0::follow-up
::ccfu::Suggest clinical correlation and follow-up.
::fufe::Suggest follow-up or further evaluation.


::sgo::suggestive of `
::obv::obvious
::nob::no obvious `
::nod::no definite `
::noe::no evident `
::hyperi::hyperintensity
::hypoi::hypointensity
::isoi::intermediate signal intensity
::T1h::T1 hyperintensity
::T1l::T1 hypointensity
::T2h::T2 hyperintensity
::T2l::T2 hypointensity
::hyperd::hyperdense
::hypod::hypodense
::isod::isodense
::hia::high-attenuation
::loa::low-attenuation
::hypere::hyperechoic
::hypoe::hypoechoic
:c:fd::filling defect
::pg::progresion
::rg::regression
::csd::considered
::spd::suspected
::sp::suspicious `
::ic::inflammatory change
::cd::consolidation
::nc::臨床不打藥
::sc::surgical clips
::mrt::more on right side
::mlt::more on left side
::adj::adjacent
::std::soft tissue density
::ddx::differential diagnoses
::nd::newly developed
::ws::wedge-shaped
::ift::infiltration
::fac::fluid accumulation
::me::mediastinum
::fa::free air
::fs::fatty stranding
::hop::hollow organ perforation

::fn::FOOTNOTE:{Enter}[{^}1]: `

; common hotstrings
::rcs::Some renal cysts in both kidneys, size up to  cm.{Left 4}
::lrc::A -cm renal cyst at the left kidney.
::rrc::A -cm renal cyst at the right kidney.
