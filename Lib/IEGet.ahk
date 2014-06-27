; 取得 IE DOM
; Access an IE object by Window/Tab Name
; written by Jethrow
; http://www.autohotkey.com/board/topic/47052-basic-webpage-controls-with-javascript-com-tutorial/

IEGet(Name="")
{
  IfEqual, Name,, WinGetTitle, Name, ahk_class IEFrame
    Name := ( Name="New Tab - Windows Internet Explorer" ) ? "about:Tabs"
            : RegExReplace( Name, " - (Windows|Microsoft) Internet Explorer" )
  For wb in ComObjCreate( "Shell.Application" ).Windows
    If ( wb.LocationName = Name ) && InStr( wb.FullName, "iexplore.exe" )
      Return wb
}
