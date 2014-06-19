; Sono
SRWait(TargetFrame)
{
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

GetSR() {
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

::s-labd::
  GetSR()

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  LeftKidney := tabIframe2.document.getElementById("sr_left_kidney") ? tabIframe2.document.getElementById("sr_left_kidney").value : "_ cm"
  RightKidney := tabIframe2.document.getElementById("sr_right_kidney") ? tabIframe2.document.getElementById("sr_right_kidney").value : "_ cm"
  Prostate := tabIframe2.document.getElementById("sr_prostate") ? tabIframe2.document.getElementById("sr_prostate").value : "_ cm"

  MyForm =
(
Sonography of lower abdomen shows:

Right renal size about %RightKidney%; left renal size about %LeftKidney%.
Normal size and echogenicity over bilateral kidneys without hydronephrosis nor nephrolithiasis noted.
Under Doppler Ultrasound, normal blood flow pattern is noted over bilateral kidneys.
Normal appearance of urinary bladder. No stones nor sludge is noted.
Prostate volume is about %Prostate%.
)
  Paste(MyForm)
Return

::s-uabd::
  GetSR()

  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  LeftKidney := tabIframe2.document.getElementById("sr_left_kidney") ? tabIframe2.document.getElementById("sr_left_kidney").value : "_ cm"
  RightKidney := tabIframe2.document.getElementById("sr_right_kidney") ? tabIframe2.document.getElementById("sr_right_kidney").value : "_ cm"
  Spleen := tabIframe2.document.getElementById("sr_spleen") ? tabIframe2.document.getElementById("sr_spleen").value : "_ cm"

  MyForm =
(
The visualized portion of pancreas is unremarkable.

Normal liver parenchyma echo pattern without focal lesion noted.

The gallbladder is well distended with smooth wall.
No abnormal dilatation of IHDs and CBD noted.

The portal vein is patent.

The visualized portion of spleen is unremarkable. Spleen size about %Spleen%.

Bilateral kidneys are normal in echogenicity.
Right kidney size about %RightKidney%; left kidney size about %LeftKidney%.
No abnormal dilatation of bilateral urinary collecting systems noted.

No pleural effusion or ascites noted.
)
  Paste(MyForm)
Return
