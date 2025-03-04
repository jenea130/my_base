nmcli device wifi list

-- old
nmcli device wifi connect "$SSID" password "$PASSWORD"
-- new
nmcli device wifi connect "$SSID" --ask

nmcli c
nmcli c down SSID
nmcli c up SSID


nmcli r wifi 
nmcli r wifi on|off
