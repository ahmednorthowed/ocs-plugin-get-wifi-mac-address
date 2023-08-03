Function GetWifiMACAddress()
    On Error Resume Next

    Dim objWMIService, colItems, adapter
    Dim wifiAdapter, primaryMAC

    Set objWMIService = GetObject("winmgmts://./root/cimv2")
    Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapter WHERE NetConnectionID IS NOT NULL")

    For Each adapter in colItems
        If adapter.NetConnectionID = "Wi-Fi" Then
            Set wifiAdapter = adapter
            Exit For
        End If
    Next

    If Not IsNull(wifiAdapter) Then
        primaryMAC = wifiAdapter.MACAddress
    End If

    GetWifiMACAddress = primaryMAC
End Function

' Call the function and store the result in the macAddress variable
Dim macAddress
macAddress = GetWifiMACAddress()

' Check if macAddress is not empty and create the XML output
If Not IsEmpty(macAddress) Then
	xmlOutput = macAddress
End If

Wscript.Echo _
	"<GETWIFIMACADDRESS>" & VbCrLf &_
	"<DATA>" & xmlOutput & "</DATA>" & VbCrLf &_
	"</GETWIFIMACADDRESS>"

