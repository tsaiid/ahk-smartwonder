; LiberaBMD
;; get BD report via the LiberaBMD server and insert into the report textarea.
;; current method only works in IE8. For IE >= 9, a new window should be created for js inject.

LiberaBMD() {
  wb := WBGet()

  myL =
  (
    acc_no = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('input[name=OldAccNo]').val();
    report_area = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('textarea[name=ReportContent]');

    $.support.cors = true;

    // IE8, IE9 的 cross domain ajax 似乎會有問題，使用額外的 jquery plugin 來處理？
    // https://github.com/MoonScript/jQuery-ajaxTransport-XDomainRequest
    $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.1/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
      /*
      console.log( data ); // Data returned
      console.log( textStatus ); // Success
      console.log( jqxhr.status ); // 200
      console.log( "Load was performed." );
      */
    });

    $.ajax({
      dataType: "json",
      url: "http://vghks.tsai.it/bone-density/studies/report/" + acc_no + "/text",
      crossDomain: true
    }).done(function(data){
      if (data.report)
        report_area.val(data.report);
      else
        alert("No data available. Please check the database.");
    }).fail(function(jqxhr,textStatus,errorThrown) {
      console.log(jqxhr);
      console.log(textStatus);
      console.log(errorThrown);
/*
      for (key in jqxhr)
        console.log(key + ":" + jqxhr[key])
      for (key2 in textStatus)
        console.log(key + ":" + textStatus[key])
      for (key3 in errorThrown)
        console.log(key + ":" + errorThrown[key])
*/
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)
}

;; Inject an Ajax javascript code indirectly into a new IE window,
;;   and then write back the result into SmartWonder page.
;; Get LiberaBMD data.
LiberaBMD2() {
  IID := "{332C4427-26CB-11D0-B483-00C04FD90119}" ; IID_IWebBrowserApp

  wb := ComObjCreate("InternetExplorer.Application")
  ; navigate an empty page including preloaded jQuery for further ajax use.
  wb.Navigate("http://vghks.tsai.it/only-jquery.html")
  ;wb.Visible := true     ; uncomment for debug
  while wb.busy
    sleep 10
  window := ComObj(9,ComObjQuery(wb,IID,IID),1)

  myL =
  (
    acc_no = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('input[name=OldAccNo]').val();
    report_area = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('textarea[name=ReportContent]');

    $.support.cors = true;

    // IE8, IE9 的 cross domain ajax 似乎會有問題，使用額外的 jquery plugin 來處理？
    // https://github.com/MoonScript/jQuery-ajaxTransport-XDomainRequest
    $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.1/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
      /*
      console.log( data ); // Data returned
      console.log( textStatus ); // Success
      console.log( jqxhr.status ); // 200
      console.log( "Load was performed." );
      */
    });

    $.ajax({
      dataType: "json",
      url: "http://vghks.tsai.it/bone-density/studies/report/" + acc_no + "/text",
      crossDomain: true
    }).done(function(data){
      if (data.report)
        report_area.val(data.report);
      else
        alert("No data available. Please check the database.");
    }).fail(function(jqxhr,textStatus,errorThrown) {
      console.log(jqxhr);
      console.log(textStatus);
      console.log(errorThrown);
/*
      for (key in jqxhr)
        console.log(key + ":" + jqxhr[key])
      for (key2 in textStatus)
        console.log(key + ":" + textStatus[key])
      for (key3 in errorThrown)
        console.log(key + ":" + errorThrown[key])
*/
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)
}


;; Inject an Ajax javascript code indirectly into a new IE window,
;;   and then write back the result into SmartWonder page.
;; Get BD related SR data.
LiberaBMDSR() {
  wb := WBGet()

  ; check if the exam is BD related
  frmWork := wb.document.frames["frameWork"]
  frmTabIframe2 := frmWork.document.frames["tabIframe2"]
  tmpStr := frmTabIframe2.document.getElementById("orderTemplate_rptFlowProcess").children[0].children[1].children[2].children[0].children[0].innerText
  RegExMatch(tmpStr, "(.+) : (.+)", splittedTmpStr)
  currExamName := splittedTmpStr2
  If !RegExMatch(currExamName, "^Bone densitometry") {
    MsgBox, This is not a bone density exam.
    Return
  }

  myL =
  (
    acc_no = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('input[name=OldAccNo]').val();
    report_area = $('iframe[name=frameWork]').contents().find('#tabIframe2').contents().find('textarea[name=ReportContent]');

    // IE8, IE9 的 cross domain ajax 似乎會有問題，使用額外的 jquery plugin 來處理？
    // https://github.com/MoonScript/jQuery-ajaxTransport-XDomainRequest
    $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.1/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
      /*
      console.log( data ); // Data returned
      console.log( textStatus ); // Success
      console.log( jqxhr.status ); // 200
      console.log( "Load was performed." );
      */
    });

    $.support.cors = true;

    $.ajax({
      dataType: "json",
      url: "http://vghks.tsai.it/dicom/sr/" + acc_no + "/report",
      crossDomain: true
    }).done(function(data){
      if (data.report) {
        report_area.val(data.report);
        //alert(data.report);
      }
      else
        alert("No data available. Please check the database.");
    }).fail(function(jqxhr,textStatus,errorThrown) {
      alert("err");
/*
      console.log(jqxhr);
      console.log(textStatus);
      console.log(errorThrown);

      for (key in jqxhr)
        console.log(key + ":" + jqxhr[key])
      for (key2 in textStatus)
        console.log(key + ":" + textStatus[key])
      for (key3 in errorThrown)
        console.log(key + ":" + errorThrown[key])
*/
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)
}