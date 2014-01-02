; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; With Parameters
#Include Lib\Hotstrings.ahk
hotstrings("p/lsp(\d)(\d)\s", "plsp")
Return

plsp:
    start := $1
    end := $2
	if (end <= start and end != 1)
		return
    If (start = 1 and start = end) ; L1~S1
    {
      range := "L1~S1"
      cage := "L1-2, L2-3, L3-4, L4-5, L5-S1"
    }
    Else
    {
		range = L%start%~
		if (end = 1)
		{
			range = %range%S1
		}
		else
		{
			range = %range%L%end%
		}
		cage = L%start%
      	Loop
		{
			startStr = %start%
			if (++start = end)
			{
				cage = %cage%-%end%
				break
			}
			else
				if (end = 1 and start = 6)
				{
					cage = %cage%-S1
					break
				}
				else
					endStr = %start%
			cage = %cage%-%endStr%, L%endStr%
		}
    }
	rangeStr = Post laminectomy, transpedicular screws, rods fixation at %range%.
	cageStr = Post interbody cage placement at %cage%.
    SendInput, %rangeStr%
	SendInput, {Enter}
	SendInput, %cageStr%
Return

#z::Run www.autohotkey.com

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return

; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

#Hotstring EndChars `t

#Include MyScripts\chest-x-ray.ahk

; For KUB
:O:kub::The bowel gas pattern, bilateral kidney shadows and psoas muscle contours are unremarkable.{Enter}

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
:O:shok::No limitation in internal/external rotation of the shoulder.
:O:p/csp::Post screws and plates fixation at L3~L6. {Enter}Post interbody cage placement at C3-4, C4-5, C5-6.{Up}{Left 5	}
:O:p/lsp::Post laminectomy, transpedicular screws, rods fixation at L2~L5. {Enter}Post interbody cage placement at L2-3, L3-4.{Up}{Right 16}
:O:spok::No disc space narrowing. No spondylolisthesis. No fracture. 
:O:oaf::Joint space narrowing and marginal osteophyte formation, involving several DIP and PIP joints. These findings are consistent with osteoarthritis.
:O:calspur::Presence of calcaneal spurs at the insertions of the Achilles tendon and the plantar fascia.
:O:nabl::No active bone lesion. 

; Other plain films
:O:cnic::The condition shows no obvious change as compared with previous study.
:O:fe::Suggest further evaluation. 
:O:ifo::in favor of 

; Sono-guide
:O:sg-ptgbd::
(
Under sonography guidance, the gallbladder was localized. The skin was prepared and the area was draped. Under local anesthesia, a 6 Fr one-step pigtail catheter was placed transhepatically into the gallbladder. Dark green, mucinous fluid was aspirated. Then, the drain was fixed with Mefix/3-0 Nylon. The whole procedure was smooth, the patient tolerated well, and no immediate complication was noted.
)

SetTitleMatchMode, 2

; HotKey
;; for SmartWonder
#IfWinActive, tedpc-
;;; Move mouse to SmartIris to activate current image, and then confirm the report (^k).
$^k::
	MouseGetPos, xpos,ypos
	MouseMove, 1919, 0
	SetMouseDelay, 250
	MouseMove, 1921, 0
	SetMouseDelay, 0
	MouseMove, %xpos%, %ypos%
	Send ^k
return

;;; Select whole line and delete
$^l::
	Send {Home}+{End}
	Send {Del}
return

;;; Select Tabs
$^1::	; 報告編輯
	MouseGetPos, xpos,ypos
	Click 300, 180
	MouseMove, %xpos%, %ypos%
return

$^3::	; 歷史報告
	MouseGetPos, xpos,ypos
	Click 700, 180
	MouseMove, %xpos%, %ypos%
return
	

IEGet(Name="")        ;Retrieve pointer to existing IE window/tab
{
    IfEqual, Name,, WinGetTitle, Name, ahk_class IEFrame
        Name := ( Name="New Tab - Windows Internet Explorer" ) ? "about:Tabs"
        : RegExReplace( Name, " - (Windows|Microsoft) Internet Explorer" )
    For wb in ComObjCreate( "Shell.Application" ).Windows
        If ( wb.LocationName = Name ) && InStr( wb.FullName, "iexplore.exe" )
            Return wb
} ;written by Jethrow

$^9::
	wb := IEGet()
	wb.window.onbeforeunload := ""
return

$^0::
	wb := IEGet()
	frmWork := wb.document.frames[4]
	tabEditReport := frmWork.document.getElementById("tabCaption0").children[1]
	tabPrevReport := frmWork.document.getElementById("tabCaption0").children[7]
	; 切換至歷史報告頁
	tabPrevReport.click()

	frmTabIframe2 := frmWork.document.frames[0]
	prevReportLists := frmTabIframe2.document.getElementById("lstBdyQuery")
	latestReport := prevReportLists.children[1].children[1]
	; 點最近報告、開影像
	latestReport.click()

	Sleep, 100

	frmPrevReport := frmWork.document.frames[0].document.frames[3]
	btnCopyReport := frmPrevReport.document.getElementsByName("copyReport")[0]
	; 複製報告
	btnCopyReport.click()

	; 切回報告編輯頁
	tabEditReport.click()
	;MsgBox % tabPrevReport.id
return

;;; Open Previous Image and Report
$^j::
;	SetMouseDelay, 50
	MouseGetPos, xpos,ypos
	Click 700, 180		; 歷史報告
	;Click 700, 325		; 最近檢查
	Click 270, 325		; 開影像
	Click 1080, 741		; 複製報告
	Click 1080, 759		; 複製報告
	Click 1080, 777		; 複製報告
	Click 1080, 795		; 複製報告
	Click 1080, 813		; 複製報告
	Click 1080, 831		; 複製報告
	Click 300, 180		; 回報告區
	MouseMove, %xpos%, %ypos%

;	wb := IEGet()
return
#IfWinActive
