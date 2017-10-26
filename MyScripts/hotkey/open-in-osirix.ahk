; OpenInOsiriX(AccNo)
;; Retrieve Images And Then Open in OsiriX

OpenInOsiriX(AccNo) {
  osirixUrl = http://mbpr-lan-ip.tsai.it:8080
  serverName = VGHKS
  requestXml =
(
<?xml version="1.0"?>
<methodCall>
    <methodName>Retrieve</methodName>
    <params>
        <param>
        <value>
            <struct>
                <member>
                    <name>serverName</name>
                    <value>
                        <string>%serverName%</string>
                    </value>
                </member>
                <member>
                    <name>filterKey</name>
                    <value>
                        <string>AccessionNumber</string>
                    </value>
                </member>
                <member>
                    <name>filterValue</name>
                    <value>
                        <string>%AccNo%</string>
                    </value>
                </member>
                <member>
                    <name>then</name>
                    <value>
                        <string>open</string>
                    </value>
                </member>
                <member>
                    <name>retrieveOnlyIfNeeded</name>
                    <value>
                        <string>yes</string>
                    </value>
                </member>
            </struct>
        </value>
        </param>
    </params>
</methodCall>
)

  WinHttpRequest(osirixUrl, requestXml)
}

OpenCurrentAccNoInOsiriX(){
  wb := WBGet()
  tabIframe2 := wb.document.frames["frameWork"].document.frames["tabIframe2"]
  AccNo := tabIframe2.document.getElementsByName("OldAccNo")[0].value

  OpenInOsiriX(AccNo)
}
