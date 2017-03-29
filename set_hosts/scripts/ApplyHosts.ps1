If ($env:HOSTS) {
  $hosts = $env:HOSTS.Replace(":", " ").Replace(",", "`r`n");
  $hosts | Set-Content "C:\Windows\System32\drivers\etc\hosts"
  "Applied hosts: `r`n" + $hosts;
}