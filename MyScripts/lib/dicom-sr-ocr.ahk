; Lib for dicom-sr-ocr

;; Wait for SR ajax to complete, by detecting if the 'sr_message' DOM presents or more than 3 seconds.
OcrWait(TargetFrame)
{
  Loop {
    Try {
      Count := 0
      Loop {   ;if found ocr_message or more than 30 sec.
        Sleep, 100
        Count += 1
      } Until (TargetFrame.document.getElementById("ocr_message") || Count > 300)

      Break
    }
    Catch e {
      MsgBox, An exception was thrown!`nSpecifically: %e%
      Break
    }
  }

  Return True
}


;; Write back (by append) the result from ajax of getting SR data into the SmartWonder Frame.
;; ResultFrame: the SmartWonder frame, usually tabIframe2
;; SrTag: start with 'sr_'
;;        currently supports: "sr_cbd", "sr_left_kidney", "sr_right_kidney",
;;                            "sr_spleen", "sr_prostate",
;;                            "sr_message"
;; Value: the retrieved data (string).
WriteBackOCR(ResultFrame, OcrTag, Value) {
  Elem := ResultFrame.document.createElement("input")
  Elem.type := "hidden"
  Elem.id := OcrTag
  Elem.value := Value

  ResultFrame.document.appendChild(Elem)
}

;; Inject an Ajax javascript code indirectly into a new IE window,
;;   and then write back the result into SmartWonder page.
;; Get sonography related SR data.
;; Currently supports: upper and lower abdomen.
GetSpgOcr2(AccNo, ResultFrame){
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
        return '<input type="hidden" name="ocr_api" id="ocr_' + label + '" value="' + value + '">';
      }

      $.getScript( "http://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxtransport-xdomainrequest/1.0.3/jquery.xdomainrequest.min.js", function( data, textStatus, jqxhr ) {
      });

      $.support.cors = true;
      var result = $('#result');
      $.ajax({
        dataType: "json",
        url: "http://vghks.tsai.it/dicom/ocr/" + %AccNo% + "/json",
        crossDomain: true
      }).done(function(data){
        //alert(data.status.message);
        if (data.status.error) {
          alert(data.status.message);
          result.append(insert_result("message", data.status.message));
        }
        else {
          // SPG
          var spg = {}
          spg['right_vo'] = data.result.RtVO;
          spg['left_vo'] = data.result.LtVO;
          spg['right_vc'] = data.result.RtVC;
          spg['left_vc'] = data.result.LtVC;
          spg['right_af'] = data.result.RtAF;
          spg['left_af'] = data.result.LtAF;

          for (var tag in spg) {
            result.append(insert_result("spg_" + tag, spg[tag]));
          }

          // SEG
          var seg = {}
          seg['right_abi'] = data.result.RtABI;
          seg['left_abi'] = data.result.LtABI;
          seg['right_brachial'] = data.result.RtBrachial;
          seg['left_brachial'] = data.result.LtBrachial;
          seg['right_upper_thigh'] = data.result.RtUpperThigh;
          seg['left_upper_thigh'] = data.result.LtUpperThigh;
          seg['right_lower_thigh'] = data.result.RtLowerThigh;
          seg['left_lower_thigh'] = data.result.LtLowerThigh;
          seg['right_calf'] = data.result.RtCalf;
          seg['left_calf'] = data.result.LtCalf;
          seg['right_ankle'] = data.result.RtAnkle;
          seg['left_ankle'] = data.result.LtAnkle;

          for (var tag in seg) {
            result.append(insert_result("seg_" + tag, seg[tag]));
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
  OcrWait(window)

  ; Write the result into the target frame
  SupportedTags := ["ocr_spg_right_VO"
                  , "ocr_spg_right_VC"
                  , "ocr_spg_right_AF"
                  , "ocr_spg_left_VO"
                  , "ocr_spg_left_VC"
                  , "ocr_spg_left_AF"
                  , "ocr_seg_right_abi"
                  , "ocr_seg_right_brachial"
                  , "ocr_seg_right_upper_thigh"
                  , "ocr_seg_right_lower_thigh"
                  , "ocr_seg_right_calf"
                  , "ocr_seg_right_ankle"
                  , "ocr_seg_left_abi"
                  , "ocr_seg_left_brachial"
                  , "ocr_seg_left_upper_thigh"
                  , "ocr_seg_left_lower_thigh"
                  , "ocr_seg_left_calf"
                  , "ocr_seg_left_ankle"
                  , "ocr_message"]
  Loop % SupportedTags.MaxIndex() {
    ; Clear ResultFrame Data
    oldResult := ResultFrame.document.getElementById(SupportedTags[A_Index])
    If (oldResult) {
      oldResult.parentNode.removeChild(oldResult)
    }
    ; Insert New OCR Data
    If (window.document.getElementById(SupportedTags[A_Index])) {
      WriteBackOCR(ResultFrame, SupportedTags[A_Index], window.document.getElementById(SupportedTags[A_Index]).value)
    }
  }

  wb.quit()
}
