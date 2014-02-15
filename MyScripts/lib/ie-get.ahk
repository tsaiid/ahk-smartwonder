; 取得 IE DOM
; Retrieve pointer to existing IE window/tab
; written by Jethrow

IEGet(Name="")
{
  IfEqual, Name,, WinGetTitle, Name, ahk_class IEFrame
    Name := ( Name="New Tab - Windows Internet Explorer" ) ? "about:Tabs"
            : RegExReplace( Name, " - (Windows|Microsoft) Internet Explorer" )
  For wb in ComObjCreate( "Shell.Application" ).Windows
    If ( wb.LocationName = Name ) && InStr( wb.FullName, "iexplore.exe" )
      Return wb
}
