# OCS-Plugin-get-Wifi-MAC-Address
This plugin is for OCS Agent that will generate the Primary/WIFI MAC address of a Windows Operating System and send it as XML format to the OCS server.

## USAGE

- Download the plugin folder.
- Copy the __WifiMACAddress.vbs__ file into OCS Agent's directory: *"..\Plugins\"*.
- Open *"..\NSIS_agent_setup\"* and edit the NSIS script file using an editor.
- Add the required script code to include the __WifiMACAddress.vbs__ file as part of the OCScompilation script.
- Run the script using NSIS installer.
- Install the agent and check the working.

### Debugging

- You can test whether the plugin is working or not by opening "C:\ProgramData\OCS Inventory NG\Agent\OCSInventory.log".
