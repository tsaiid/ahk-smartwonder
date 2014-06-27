; For LiberaBMD
; Standalone AHK script to get the report of BMD from server.

; WBGet()
; Access an IE object by WinTitle and Internet Explorer_Server Number
; By jethrow
; http://www.autohotkey.com/board/topic/47052-basic-webpage-controls-with-javascript-com-tutorial/

; Group Control For SmartWonder
GroupAdd, SmartWonder, VGHKS-
GroupAdd, SmartWonder, vghks-
GroupAdd, SmartWonder, tedpc-

#IfWinActive ahk_group SmartWonder

WBGet(WinTitle="ahk_class IEFrame", Svr#=1) {               ;// based on ComObjQuery docs
  static msg := DllCall("RegisterWindowMessage", "str", "WM_HTML_GETOBJECT")
       , IID := "{0002DF05-0000-0000-C000-000000000046}"   ;// IID_IWebBrowserApp
;//    , IID := "{332C4427-26CB-11D0-B483-00C04FD90119}"   ;// IID_IHTMLWindow2
  SendMessage msg, 0, 0, Internet Explorer_Server%Svr#%, %WinTitle%
  if (ErrorLevel != "FAIL") {
    lResult:=ErrorLevel, VarSetCapacity(GUID,16,0)
    if DllCall("ole32\CLSIDFromString", "wstr","{332C4425-26CB-11D0-B483-00C04FD90119}", "ptr",&GUID) >= 0 {
       DllCall("oleacc\ObjectFromLresult", "ptr",lResult, "ptr",&GUID, "ptr",0, "ptr*",pdoc)
       return ComObj(9,ComObjQuery(pdoc,IID,IID),1), ObjRelease(pdoc)
    }
  }
}

; to get bone density report by ajax.
$^l::
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
Return

#IfWinActive