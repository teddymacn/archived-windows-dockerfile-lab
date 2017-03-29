FROM microsoft/windowsservercore

#enable eventlog
RUN powershell.exe -command Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application Start 1

# list latest 10 system eventlog
CMD powershell -command "Get-EventLog system -newest 10 | Format-List"

#to build, execute: docker build -t enable_eventlog .
#to run, execute: docker run --rm enable_eventlog
