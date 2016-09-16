; WheelScroll

WheelScroll(m){ ; SPI_GETWHEELSCROLLLINES = 0x68 , SPI_SETWHEELSCROLLLINES = 0x69
   static b := 0, c := DllCall("SystemParametersInfo", UInt, 0x68, UInt, 0, UIntP, b, UInt, 0)
   DllCall("SystemParametersInfo", UInt, 0x69, UInt, m ? (m<=100 ? m : 3) : b, UInt, 0, UInt, 3)
}               ; m = (1-100) , 3 is system default

WheelScroll(3)
