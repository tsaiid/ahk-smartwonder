; for debug

$^7::
  ;Send {Home}+{End}

  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  ReportContent := tabIframe2.document.getElementsByName("ReportContent")[0]

  ; get Caret
  ;; ref: http://stackoverflow.com/a/3373056
  textRange := tabIframe2.document.selection.createRange()

  totalLen := StrLen(ReportContent.value)
  normalizedValue := ReportContent.value
  StringReplace, normalizedValue, normalizedValue, `r`n, `n, All

  textInputRange := ReportContent.createTextRange()
  textInputRange.moveToBookmark(textRange.getBookmark())

  endRange := ReportContent.createTextRange()
  endRange.collapse(false)

  if (textInputRange.compareEndPoints("StartToEnd", endRange) > -1) {
    startPos := endPos := totalLen
  } else {
    startPos := -textInputRange.moveStart("character", -totalLen)
    if (textInputRange.compareEndPoints("EndToEnd", endRange) > -1) {
      endPos := totalLen
    } else {
      endPos := -textInputRange.moveEnd("character", -totalLen)
    }
  }

  ; special condition, at the beginning
  strAry := Array()
  StringLeft, leftStr, normalizedValue, startPos
  StringSplit, strAry, leftStr, `n
  If (startPos) {
    startLine := strAry[0]
    startLineOffset := StrLen(strAry[startLine])
  } Else {
    startLine := 1
    startLineOffset := 0
  }

  strAry := Array()
  StringLeft, leftStr, normalizedValue, endPos
  StringSplit, strAry, leftStr, `n
  StringSplit, norAry, normalizedValue, `n
  If (endPos) {
    endLine := strAry[0]
  } Else {
    endLine := 1
  }

  If (StrLen(strAry[endLine]) = 0 && endLine > 1 && endLine > startLine) {
    isEndNewLine := 1
    endLine -= 1  ; 若最後一個字元是 \n 會多算一行
  }
  endLineOffset := StrLen(norAry[endLine]) - StrLen(strAry[endLine])

  norLineText := norAry%endLine%
  norLineTextLen := StrLen(norAry%endLine%)
  endLineText := strAry[endLine]
  ;MsgBox, nor: %norLineText%
  ;MsgBox, start: %startLine%, end: %endLine%
  ;MsgBox, start: %startLineOffset%, end: %endLineOffset%

  textRange.moveStart("character", -startLineOffset)
  textRange.moveEnd("character", endLineOffset)
  ;Sleep 300   ; seems moveStart and moveEnd need some delay to work!
  ;final := textRange.text
;  MsgBox % final
;  Return


  ; numbering the selected text
  selectedText := textRange.text
  If (StrLen(selectedText) > 0) {
    ;MsgBox, "%selectedText%"
    ;finalText := textInputRange.text
    ;finalText := ""
    ;Loop, Parse, normalizedValue, `n
    ;{
    ;  If (A_Index >= startLine && A_Index <= endLine) {
    ;    currNo := A_Index - startLine + 1
    ;    finalText .= currNo . ". " . RegExReplace(A_LoopField, "^\d+\.(\s*)(.*)", "$2")
    ;    ;MsgBox, %A_Index%. %A_LoopField%
    ;  }
    ;}
    finalText := ""
    currLineNo := 0
    Loop, Parse, normalizedValue, `n
    {
      If (A_Index >= startLine && A_Index <= endLine) {
        ;MsgBox, "%A_Index%"
        If (!RegExMatch(A_LoopField, "^\s*$"))
          finalText .= ++currLineNo . ". " . RegExReplace(A_LoopField, "^\d+\.(\s*)(.*)", "$2") . "`n"
        Else
          finalText .= A_LoopField . "`n"
      ;MsgBox, %A_Index%. %A_LoopField%
      }
    }
    If (isEndNewLine){
      ;finalText .= "`n"
      ;MsgBox, newline end
    }

    ;MsgBox % finalText
    textRange.text := finalText
  } Else {
    ;MsgBox, No selection?! startPos: %startPos%, endPos: %endPos%, startLine: %startLine%, endLine: %endLine%, slOff: %startLineOffset%, elOff: %endLineOffset%, norLineText: %norLineText%, endLineText: %endLineText%
    MsgBox, leftStr: %leftStr%, %strAry0%, %strAry1%
  }

  ;MsgBox, start: %startPos%, end: %endPos%
Return

CheckHotstrings()
{
  global Hotstrings
  Loop, read, %A_WorkingDir%\MyScripts\chest-x-ray.ahk
  Gui, Hotstrings:New
  Gui, Hotstrings:+Resize
  Gui, Hotstrings:Add, ListView, vHotstrings, Name|Description
  Gui, Hotstrings:Default
  Loop, read, %A_WorkingDir%\MyScripts\chest-x-ray.ahk
  {
    If (SubStr(A_LoopReadLine, 1, 1) = ":")
    {
      RegExMatch(A_LoopReadLine, ":(.*)::", Hotstring, 2)
      RegExMatch(A_LoopReadLine, ":.*::(.*)", Description, 2)
      StringTrimLeft, Description, Description, 1
      StringTrimLeft, Hotstring, Hotstring, 1
      StringTrimRight, Hotstring, Hotstring, 2
    }
    If Hotstring != %Previoushotstring%
      If Hotstring !=
        LV_Add("", Hotstring, Description)
    Previoushotstring := Hotstring
    Lv_ModifyCol()
  }
  Gui, Hotstrings:Show, w560 h320, Hotstrings
  return

  HotstringsGuiClose:
  HotstringsGuiEscape:
  Gui Destroy
  return

  HotstringsGuiSize:
  WinGetPos, , , width, height
  w := width*0.85
  h := height*0.85
  GuiControl, Move, Hotstrings, w%w% h%h%
  return
}

$^9::
  wb := WBGet()

  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  ReportContent := tabIframe2.document.getElementsByName("ReportContent")[0]

  ; get Caret
  ;; ref: http://stackoverflow.com/a/3373056
  textRange := tabIframe2.document.selection.createRange()
  a := textRange.text

  MsgBox, "%a%"

  ;MsgBox % WonderID
  ;; get current exam name
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
$^!z::
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
      else {
        lst_bdy_lst_wrk = $('iframe[name=frameWrkList]').contents().find('#lstBdylstWrk');
        lst_length = lst_bdy_lst_wrk.children().length;

//        alert(lst_length);
        next_patient_index = -1;

        if (lst_length) {
          lst_bdy_lst_wrk.children().each(function(i){
            lst_acc_no = $(this).children().eq(3).children().eq(1).text();
            if (lst_acc_no == acc_no) {
              //if (i + 1 < lst_length){
                next_patient_index = i + 1;
              //}

              return false;
            }
          });
          //alert(next_patient_index);
        }

        if (next_patient_index > 0) {
          if (next_patient_index == lst_length)
            alert("ok");
          else
            lst_bdy_lst_wrk.children().eq(next_patient_index).click();
        }
      }
    }).fail(function(jqXHr, textStatus, errorThrown) {
        alert("ajax failed: " + textStatus);
    });
  )

  window := wb.document.parentWindow
  window.execScript(myL)

Return

; Ctrl + Alt + Win + L
; Login to SmartWonder
;#IfWinActive ahk_class tedpc
^!#l::
  wb := WBGet()

  WonderID := wb.document.getElementsByName("WonderID")[0]
  WonderID.value := "4320"
  WonderPassword := wb.document.getElementsByName("WonderPassword")[0]
  WonderPassword.value := "RD4320"
  LoginImg := wb.document.getElementsByName("login")[0]
  LoginImg.click()
Return
;#IfWinActive
