; Smart Card
PrintHex(num)
{
  OldFormat := A_FormatInteger ; save the current format as a string
  SetFormat, Integer, Hex
  num += 0
  MsgBox % num
  SetFormat, Integer, %OldFormat%
}

CheckSmartCardPresence(showDebugMsg=false) {
  isSCardPresent := 0
  WinscardMod := DllCall("LoadLibrary", "Str", "Winscard.dll", "Ptr")
  lReturn := DllCall("Winscard.dll\SCardEstablishContext"
                    , "UInt", 0       ; SCARD_SCOPE_USER
                    , "Ptr", 0
                    , "Ptr", 0
                    , A_PtrSize == 8 ? "UInt64*" : "UInt*", hSC)

  If (lReturn != 0x0) {
    If (showDebugMsg) {
      MsgBox, SCardEstablishContext failed
    }
  } Else {
    cchReaders := -1
    lReturn := DllCall("Winscard.dll\SCardListReaders"
                      , A_PtrSize == 8 ? "UInt64" : "UInt", hSC
                      , "Str", "SCard$AllReaders"
                      , "Ptr*", mszReaders
                      , "UInt*", cchReaders)
    readers := []
    If (lReturn == 0x00000000) {
      pReader := mszReaders
      ; get *all* the card readers' names
      While (*pReader) {
        reader := StrGet(pReader,, A_IsUnicode ? "UTF-16" : "CP0")
        readers.Push(reader)
        If (showDebugMsg) {
          MsgBox % reader
        }
        pReader := pReader + (DllCall(A_IsUnicode ? "msvcrt\wcslen" : "msvcrt\strlen", "Ptr", pReader) * (A_IsUnicode + 1)) + (A_IsUnicode + 1) ; Advance to next null-terminated string to get next card reader name
      }
      DllCall("Winscard.dll\SCardFreeMemory", "Ptr", hSC, "Ptr", pmszReaders)
    }

    lReturn := DllCall("Winscard.dll\SCardConnect"
                      , A_PtrSize == 8 ? "UInt64" : "UInt", hSC
                      , "Str", readers[1]
                      , "UInt", 2                         ; SCARD_SHARE_SHARED
                      , "UInt", 0x00000001 | 0x00000002   ; SCARD_PROTOCOL_T0 | SCARD_PROTOCOL_T1
                      , A_PtrSize == 8 ? "UInt64*" : "UInt*", hCardHandle
                      , "UInt*", dwAP
                      , "UInt")
    If (lReturn == 0x0) { ; SCARD_S_SUCCESS
      cch := 200
      cByte := 32
      VarSetCapacity(cByte, 32, 0)
      lReturn := DllCall("Winscard.dll\SCardStatus"
                        , A_PtrSize == 8 ? "UInt64" : "UInt", hCardHandle
                        , "Str", readers[1]
                        , "UInt", &cch
                        , A_PtrSize == 8 ? "UInt64*" : "UInt*", dwState
                        , "UInt*", dwProtocol
                        , "UPTR", &bAttr
                        , "UInt", &cByte
                        , "UInt")
      If (lReturn == 0x0) { ; SCARD_S_SUCCESS
        isSCardPresent := 1
        lReturn := DllCall("Winscard.dll\SCardDisconnect"
                        , A_PtrSize == 8 ? "UInt64" : "UInt", hCardHandle
                        , "UInt", 0)   ; SCARD_LEAVE_CARD
        If (lReturn != 0x0) { ; Not SCARD_S_SUCCESS
          If (showDebugMsg) {
            PrintHex(lReturn)
          }
        }
      }
    } Else {
      If (showDebugMsg) {
        PrintHex(lReturn)
      }
    }
    lReturn := DllCall("Winscard.dll\SCardReleaseContext", "Ptr", hSC)
    If (lReturn != 0x0) { ; SCARD_S_SUCCESS
      If (showDebugMsg) {
        MsgBox, SCardReleaseContext failed
      }
    }
  }

  DllCall("FreeLibrary", "Ptr", WinscardMod), WinscardMod := 0
  Return isSCardPresent
}
