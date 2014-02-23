; for debug
$^9::
  wb := WBGet()
  ;; get current exam name
  ;str := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  ;RegExMatch(str, "(.+) : (.+)", splitted)
  ;currExam := splitted2

  ;; get current exam date and time
  ;currExamName := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("BodyPart").innerText
  ;currExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("StudyDate").innerText
  ;currExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.frames["History2"].document.getElementById("StudyTime").innerText

  ;; get previous exam name
  ;prevExamDate := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[4].innerText
  ;prevExamTime := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById("lstBdyQuery").children[1].children[5].innerText
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

  ;prevExamTime := prevExamTime + 0
  ;currExamTime := currExamTime + 0
  ;if (prevExamTime > currExamTime)
  ;  str := ">"
  ;else
  ;  str := "<"

  ;StringReplace currExamDate, currExamDate, -,, All
  accNo := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementsByName("OldAccNo")[0].value
  orderId = OrderDiag_%accNo%
  orderDiag := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementById(orderId).value
  StringReplace, NewOrder, orderDiag, Purpose :, ``, All
  StringSplit, MyArray, NewOrder, ``

  MsgBox % MyArray2
return

$^8::
  wb := WBGet()

  frameWrkList := wb.document.frames["frameWrkList"]
  lstBdylstWrk := frameWrkList.document.getElementById("lstBdylstWrk")

  ; 找到目前在第幾個病人
  accNo := wb.document.frames["frameWork"].document.frames["tabIframe2"].document.getElementsByName("OldAccNo")[0].value

  lstLength := lstBdylstWrk.children.length

  If !lstLength {
    MsgBox, No list ?!
    Return
  }

  Loop %lstLength% {
    lstAccNo := lstBdylstWrk.children[A_Index - 1].children[3].children[1].innerText
    ;MsgBox % A_Index . " " . lstAccNo . " " . accNo
    If (lstAccNo = accNo) {
      nxtPatientIndex := A_Index
      Break
    }
  }

  If (nxtPatientIndex < lstLength) {
    lstBdylstWrk.children[nxtPatientIndex].click
  }

  ;MsgBox % lstBdylstWrk.children.length
Return

;; to get bone density report by ajax.
$^2::
  wb := WBGet()

  myL =
  ( %
    var compareArrays = function(a, b) {
      if (a === b)
        return true;
      if (a.length !== b.length)
        return false;
      for (var i = 0; i < a.length; i++){
        if(!(a[i] == b[i])) return false;
      };
      return true;
    };

    acc_no = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('input[name=OldAccNo]').val();
    report_area = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('textarea[name=ReportContent]');

    //alert(acc_no);

    $.support.cors = true;
    $.ajax({
      dataType: "json",
      url: "//bone-density.tsaiid.idv.tw/studies/report/" + acc_no + "/text",
      crossDomain: true
    }).done(function(data){
//      alert(data.report);
      my_p = $.map(data.report.match(/(\d+\s*%)/g), function(x){ return x.match(/(\d+)/)[1] });
      re_p = $.map(report_area.val().match(/(\d+\s*%)/g), function(x){ return x.match(/(\d+)/)[1] });
      my_s = $.map(data.report.match(/\([TZ]-score\s*=\s*-?[\d\.]+\)/g), function(x){ return x.match(/=\s*(-?[\d\.]+)/)[1] });
      re_s = $.map(report_area.val().match(/\([TZ]-score\s*=\s*-?[\d\.]+\)/g), function(x){ return x.match(/=\s*(-?[\d\.]+)/)[1] });
      my_c = data.report.match(/normal limit|low bone mass|osteoporosis|within the expected|below the expected/);
      re_c = data.report.match(/normal limit|low bone mass|osteoporosis|within the expected|below the expected/);

      if (!compareArrays(my_p, re_p) || !compareArrays(my_s, re_s) || !compareArrays(my_c, re_c)) {
        alert(data.report);
        //alert(my_p);
        //alert(re_p);
      }
      else
        alert("ok");
//      alert(my_s);
    }).fail(function(jqXHr, textStatus, errorThrown) {
        alert("ajax failed: " + textStatus);
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)

Return
