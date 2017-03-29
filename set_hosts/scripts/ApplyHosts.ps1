If ($env:HOSTS) {
  $hosts = $env:HOSTS.Replace(",", "`r`n");
  $hosts | Set-Content "C:\Windows\System32\drivers\etc\hosts"
  "Applied hosts: `r`n" + $hosts;
}