; for debug
$^9::
  wb := WBGet()
  ;; get current exam name
  ;str := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  ;RegExMatch(str, "(.+) : (.+)", splitted)
  ;currExam := splitted2

  ;; get current exam date and time
  currExamName := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("BodyPart").innerText
  currExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("StudyDate").innerText
  currExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("StudyTime").innerText

  ;; get previous exam name
  ;prevExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[4].innerText
  prevExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[5].innerText
  ;prevExamName := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[7].innerText

  ;; determine lstBdyQuery Type
  ;; if CtrlId == lstBdyQuery, is a valid exam.
  ;prevExamType := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].getAttribute("CtrlId")

  ;; loop to search prevExamName
  ;prevReportLists := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery")
  ;prevReportListsLength := prevReportLists.children.length
  ;getPrevReport := 0
  ;pat := "i)chest (pa|ap)"
  ;Loop %prevReportListsLength% {
  ;  if RegExMatch(prevReportLists.children[A_Index].children[7].innerText, pat) {
  ;    getPrevReport := A_Index
  ;    break
  ;  }
  ;}

  prevExamTime := prevExamTime + 0
  currExamTime := currExamTime + 0
  if (prevExamTime > currExamTime)
    str := ">"
  else
    str := "<"

  StringReplace currExamDate, currExamDate, -,, All
  MsgBox, %currExamDate%
return

;; to get bone density report by ajax.
$^8::
  wb := WBGet()

  myL =
  (
    acc_no = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('input[name=OldAccNo]').val();
    report_area = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('textarea[name=ReportContent]');

    $.support.cors = true;
    $.ajax({
      dataType: "json",
      url: "//bone-density.tsaiid.idv.tw/studies/report/" + acc_no + "/text",
      crossDomain: true
    }).done(function(data){
      //report_area.val(data.report);
      alert(data.report);
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)

Return


:O:ctnec::
ClipSave:=ClipboardAll ; store clipboard data
Clipboard=
(
INDICATION:


TECHNIQUE:
Multi-slice CT scanner with
(1) Non-contrast and (2) Contrast-enhanced
scanning in axial plane from skull base to thoracic inlet with 5-mm-thick contiguous slices and coronal reformatted images.
Contrast medium: intravenous route, volume: 60 mL, rate: 1.0 mL/sec

COMPARISON:
Applicable previous CT of face and neck: none
Applicable previous MRI of face and neck: none

FINDINGS:

Due to no contrast-enhanced CT performed, small enhancing lesion could not be evaluated.

1. Primary tumor status:



2. Cervical nodes:

* right/left/bilateral level I, II, III, IV, V, VI, VII

No evidence of bulky lymph nodes, and lymph nodes size smaller than 1 cm, over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions was noted.

No evidence of bulky lymph nodes (> 1cm) over bilateral carotid space and posterior cervical space noted.

No evidence of bulky lymph nodes in shortest axis (> 1cm) over bilateral carotid space and posterior cervical space noted.

No evidence of bulky lymph nodes in shortest axis (> 1cm) over bilateral supraclavicular fossas noted.

No evidence of bulky lymph nodes in shortest axis (> 1.5cm) over bilateral submandibular and submental space noted.

a. No evidence of bulky lymph nodes over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions was noted.

b. Presence of several/multiple lymph nodes noted over --------------- carotid space and --------------- posterior triangle of submandibular and neck regions, the biggest size about --------  cm, R/O inflammatory or metastatic lymph nodes.

c. Presence of several lymph nodes noted over bilateral carotid space and posterior triangle of submandibular and upper neck regions, the biggest size about 1.1 cm, R/O inflammatory lymph nodes. However, lymphoma, metastatic lymph nodes can not be completely excluded.  Suggest clinical check up.

d. Presence of several/multiple lymph nodes noted over ---------------, the biggest size about --------  cm, the differential diagnoses including lymphoma, metastasis, or inflammation, recommend biopsy or close follow up.


3. Others:
a. No evidence of enhanced mass lesion in the submandibular and neck region.

b. No particular findings of nasopharynx, parotid gland, and submandibular gland.

c. No particular findings of nasopharynx, parotid gland, submandibular gland, and thyroid gland.

d. The axilla region cannot be well evaluated due to small FOV of the head and neck CT.


IMPRESSION:
SUGGESTION:
)
Send, ^v
Clipboard:=ClipSave ; restore clipboard data
ClipSave:=
Return
