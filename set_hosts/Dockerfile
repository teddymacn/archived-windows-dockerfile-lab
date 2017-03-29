FROM microsoft/iis

#install ASP.NET 4.5
RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart

#deploy webapp
COPY iis-demo /inetpub/wwwroot/iis-demo
RUN /windows/system32/inetsrv/appcmd.exe add app /site.name:"Default Web Site" /path:"/iis-demo" /physicalPath:"c:\inetpub\wwwroot\iis-demo"

#set entrypoint script
COPY scripts /scripts
ENTRYPOINT ["C:\\scripts\\SetHostsAndStartMonitoring.cmd"]

#the --add-host option is not supported by windows server docker yet
#an alternative way is to pass in custom hosts via env variable and overwrite hosts in entrypoint script

#to build, execute: docker build -t set_hosts .
#to run, execute: docker run --rm --env-file ./hosts.env set_hosts
