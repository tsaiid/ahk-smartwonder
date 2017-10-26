; Lib for dicom-sr

;; Wait for SR ajax to complete, by detecting if the 'sr_message' DOM presents or more than 3 seconds.
SRWait(TargetFrame) {
  Loop {
    Try {
      Count := 0
      Loop {   ;if found sr_message or more than 3 sec.
        Sleep, 100
        Count += 1
      } Until (TargetFrame.document.getElementById("sr_message") || Count > 30)

      Break
    }
    Catch e {
      MsgBox, An exception was thrown!`nSpecifically: %e%
      Break
    }
  }

  Return True
}


;; Inject an Ajax javascript code directly into SmartWonder page.
;; Get sonography related SR data.
;; Currently supports: upper and lower abdomen.
GetSonoSR() {
  wb := WBGet()

  myL =
  (
    insert_result = function(label, value) {
      return '<input type="hidden" name="sr_api" id="sr_' + label + '" value="' + value + '">';
    }

    tab_iframe2 = $('iframe[name=frameWork]').contents().find('#tabIframe2');
    acc_no = tab_iframe2.contents().find('input[name=OldAccNo]').val();
    report_area = tab_iframe2.contents().find('textarea[name=ReportContent]');

    // Remove previously inserted data
    tab_iframe2.contents().find('input[name=sr_api]').remove();

    $.support.cors = true;

    // IE8, IE9 的 cross domain ajax 似乎會有問題，使用額外的 jquery plugin 來處理？
    // https://github.com/MoonScript/jQuery-ajaxTransport-XDomainRequest
    $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.3/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
    });

    $.ajax({
      dataType: "json",
      url: "http://vghks.tsai.it/dicom/sr/" + acc_no + "/json",
      crossDomain: true
    }).done(function(data){
      //alert(data.status.message);
      if (data.status.error) {
        alert(data.status.message);
        report_area.after(insert_result("message", data.status.message));
      }
      else {
        // kidney
        var kidney = data.result.kidney;
        if (kidney) {
          if (kidney.left) {
            report_area.after(insert_result("left_kidney", kidney.left));
          }
          if (kidney.right) {
            report_area.after(insert_result("right_kidney", kidney.right));
          }
        }

        // spleen
        var spleen = data.result.spleen;
        if (spleen) {
          report_area.after(insert_result("spleen", spleen));
        }

        // CBD
        var cbd = data.result.cbd;
        if (cbd) {
          report_area.after(insert_result("cbd", cbd));
        }

        // Prostate
        var prostate = data.result['Prostate Vol'];
        if (prostate) {
          report_area.after(insert_result("prostate", prostate));
        }

        // insert a message for AHK to detect finish.
        report_area.after(insert_result("message", "data fetched."));
      }
    }).fail(function(jqxhr,textStatus,errorThrown) {
      report_area.after(insert_result("message", "ajax error!"));
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)

  ; Wait until Ajax request done
  SRWait(tabIframe2)
}


;; Write back (by append) the result from ajax of getting SR data into the SmartWonder Frame.
;; ResultFrame: the SmartWonder frame, usually tabIframe2
;; SrTag: start with 'sr_'
;;        currently supports: "sr_cbd", "sr_left_kidney", "sr_right_kidney",
;;                            "sr_spleen", "sr_prostate",
;;                            "sr_message"
;; Value: the retrieved data (string).
WriteBackSR(ResultFrame, SrTag, Value) {
  Elem := ResultFrame.document.createElement("input")
  Elem.type := "hidden"
  Elem.id := SrTag
  Elem.value := Value

  ResultFrame.document.appendChild(Elem)
}

;; Inject an Ajax javascript code indirectly into a new IE window,
;;   and then write back the result into SmartWonder page.
;; Get sonography related SR data.
;; Currently supports: upper and lower abdomen.
GetSonoSR2(AccNo, ResultFrame){
  IID := "{332C4427-26CB-11D0-B483-00C04FD90119}" ; IID_IWebBrowserApp

  wb := ComObjCreate("InternetExplorer.Application")
  ; navigate an empty page including preloaded jQuery for further ajax use.
  wb.Navigate("http://vghks.tsai.it/only-jquery.html")
  ;wb.Visible := true     ; uncomment for debug
  while wb.busy
    sleep 10
  window := ComObj(9,ComObjQuery(wb,IID,IID),1)

  var =
(
  // Load jQuery with javascript
  // ref: http://stackoverflow.com/a/10113434
  (function() {
    // Load the script
    var script = document.createElement('script');
    script.src = 'https://code.jquery.com/jquery-1.11.0.min.js';
    script.type = 'text/javascript';
    //document.getElementsByTagName('head')[0].appendChild(script);

    // Poll for jQuery to come into existance
    var checkReady = function(callback) {
        if (window.jQuery) {
            callback(jQuery);
        }
        else {
            window.setTimeout(function() {
              checkReady(callback);
            }, 100);
        }
    };

    // Start polling...
    checkReady(function($) {
      // Use $ here...
      $('body').append('<div id="result">result</div>');

      insert_result = function(label, value) {
        return '<input type="hidden" name="sr_api" id="sr_' + label + '" value="' + value + '">';
      }

      $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.3/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
      });

      $.support.cors = true;
      var result = $('#result');
      $.ajax({
        dataType: "json",
        url: "http://vghks.tsai.it/dicom/sr/" + %AccNo% + "/json",
        crossDomain: true
      }).done(function(data){
        //alert(data.status.message);
        if (data.status.error) {
          //alert(data.status.message);
          result.append(insert_result("message", data.status.message));
        }
        else {
          // kidney
          var kidney = data.result.kidney;
          if (kidney) {
            if (kidney.left) {
              result.append(insert_result("left_kidney", kidney.left));
            }
            if (kidney.right) {
              result.append(insert_result("right_kidney", kidney.right));
            }
          }

          // spleen
          var spleen = data.result.spleen;
          if (spleen) {
            result.append(insert_result("spleen", spleen));
          }

          // CBD
          var cbd = data.result.cbd;
          if (cbd) {
            result.append(insert_result("cbd", cbd));
          }

          // Prostate
          var prostate = data.result['Prostate Vol'];
          if (prostate) {
            result.append(insert_result("prostate", prostate));
          }

          // insert a message for AHK to detect finish.
          result.append(insert_result("message", "data fetched."));
        }
      }).fail(function(jqxhr,textStatus,errorThrown) {
        result.append(insert_result("message", "ajax error!"));
      });

    });
  })();
)

  window.eval(var)
  SRWait(window)

  ; Write the result into the target frame
  SupportedTags := ["sr_cbd", "sr_left_kidney", "sr_right_kidney", "sr_spleen", "sr_prostate", "sr_message"]
  Loop % SupportedTags.MaxIndex() {
    ; Clear ResultFrame Data
    oldResult := ResultFrame.document.getElementById(SupportedTags[A_Index])
    If (oldResult) {
      oldResult.parentNode.removeChild(oldResult)
    }
    ; Insert New SR Data
    If (window.document.getElementById(SupportedTags[A_Index])) {
      WriteBackSR(ResultFrame, SupportedTags[A_Index], window.document.getElementById(SupportedTags[A_Index]).value)
    }
  }

  wb.quit()
}

;; Inject an Ajax javascript code indirectly into a new IE window,
;;   and then write back the result into SmartWonder page.
;; Get sonography related SR data.
;; Currently supports: upper and lower abdomen.
GetTasSR2(AccNo, ResultFrame){
  IID := "{332C4427-26CB-11D0-B483-00C04FD90119}" ; IID_IWebBrowserApp

  wb := ComObjCreate("InternetExplorer.Application")
  ; navigate an empty page including preloaded jQuery for further ajax use.
  wb.Navigate("http://vghks.tsai.it/only-jquery.html")
  ;wb.Visible := true     ; uncomment for debug
  while wb.busy
    sleep 10
  window := ComObj(9,ComObjQuery(wb,IID,IID),1)

  var =
(
  // Load jQuery with javascript
  // ref: http://stackoverflow.com/a/10113434
  (function() {
    // Load the script
    var script = document.createElement('script');
    script.src = 'https://code.jquery.com/jquery-1.11.0.min.js';
    script.type = 'text/javascript';
    //document.getElementsByTagName('head')[0].appendChild(script);

    // Poll for jQuery to come into existance
    var checkReady = function(callback) {
        if (window.jQuery) {
            callback(jQuery);
        }
        else {
            window.setTimeout(function() {
              checkReady(callback);
            }, 100);
        }
    };

    // Start polling...
    checkReady(function($) {
      // Use $ here...
      $('body').append('<div id="result">result</div>');

      insert_result = function(label, value) {
        return '<input type="hidden" name="sr_api" id="sr_' + label + '" value="' + value + '">';
      }

      $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.3/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
      });

      $.support.cors = true;
      var result = $('#result');
      $.ajax({
        dataType: "json",
        url: "http://vghks.tsai.it/dicom/sr/" + %AccNo% + "/json",
        crossDomain: true
      }).done(function(data){
        //alert(data.status.message);
        if (data.status.error) {
          alert(data.status.message);
          result.append(insert_result("message", data.status.message));
        }
        else {
          var measures = ["L", "W", "H", "Vol"];
          var sides = ["left", "right"];

          // Ovary
          $.each(measures, function(i, measure){
            var label = 'Ovary ' + measure;
            var label_nosp = label.replace(" ", "");
            $.each(sides, function(i, side){
              if (data.result[label][side]) {
                result.append(insert_result(side + label_nosp, data.result[label][side]));
              }
            });
          });

          // endometrium
          var Endometrium = data.result.Endometrium;
          if (Endometrium) {
            result.append(insert_result("Endometrium", Endometrium));
          }

          // Uterus
          $.each(measures, function(i, measure){
            var label = 'Uterus ' + measure;
            var label_nosp = label.replace(" ", "");
            if (data.result[label]) {
              result.append(insert_result(label_nosp, data.result[label]));
            }
          });

          // insert a message for AHK to detect finish.
          result.append(insert_result("message", "data fetched."));
        }
      }).fail(function(jqxhr,textStatus,errorThrown) {
        result.append(insert_result("message", "ajax error!"));
      });

    });
  })();
)

  window.eval(var)
  SRWait(window)

  ; Write the result into the target frame
  SupportedTags := [  "sr_Endometrium"
                    , "sr_LeftOvaryL", "sr_LeftOvaryW", "sr_LeftOvaryH", "sr_LeftOvaryVol"
                    , "sr_RightOvaryL", "sr_RightOvaryW", "sr_RightOvaryH", "sr_RightOvaryVol"
                    , "sr_UterusL", "sr_UterusW", "sr_UterusH", "sr_UterusVol"
                    , "sr_message"  ]
  Loop % SupportedTags.MaxIndex() {
    ; Clear ResultFrame Data
    oldResult := ResultFrame.document.getElementById(SupportedTags[A_Index])
    If (oldResult) {
      oldResult.parentNode.removeChild(oldResult)
    }
    ; Insert New SR Data
    If (window.document.getElementById(SupportedTags[A_Index])) {
      WriteBackSR(ResultFrame, SupportedTags[A_Index], window.document.getElementById(SupportedTags[A_Index]).value)
    }
  }

  wb.quit()
}

GetSonoSR_Local(AccNo){
  ruby_path = c:\Ruby24\bin\ruby.exe -W0
  sr_script_dir = d:\tsaiid\git\vghks-dicom-sr
  full_cmd = %ruby_path% %sr_script_dir%\sr-cli.rb %AccNo%

  result := StdOutStream(full_cmd)
  Try {
    parsedSr := JSON.Load(result)
  } Catch e {
    MsgBox, Parsing JSON error: %e%
  }
  Return parsedSr
}
