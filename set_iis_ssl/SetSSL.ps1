cmd /c "certutil -p %SSL_PASS% -importPFX c:\iis-test.pfx"
$addr=[System.Net.Dns]::GetHostAddresses([System.Environment]::MachineName).IPAddressToString
$env:ssl_addr=$addr[1]+":443"
cmd /c 'netsh http add sslcert ipport=%ssl_addr% certstorename=MY certhash=C97E4D29C00D9B250EADCFE27D50F09FA76599B0 appid="{4dc3e181-e14b-4a21-b022-59fc669b0914}"'
New-WebBinding -name "Default Web Site" -Protocol https  -HostHeader * -Port 443 -SslFlags 1
