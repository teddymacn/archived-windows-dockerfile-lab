FROM microsoft/iis

#install ASP.NET 4.5
RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart

#install WCF features, here we only enabled http and tcp protocol
#for the full list of features you can enable, execute "dism /online /get-features" on a windows server machine
RUN dism /online /enable-feature /featurename:WCF-HTTP-Activation45 /all
RUN dism /online /enable-feature /featurename:WCF-TCP-Activation45 /all

#enable WCF protocols
RUN /windows/system32/inetsrv/appcmd.exe set config -section:system.applicationHost/sites /[@0].[@0].enabledProtocols:"http,net.tcp"

ENTRYPOINT ["c:\\ServiceMonitor.exe", "w3svc"]

#to build, execute: docker build -t enable_wcf .
#to run, execute: docker run --rm enable_wcf
