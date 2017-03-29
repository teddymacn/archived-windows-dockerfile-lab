FROM microsoft/iis

#install ASP.NET 4.5
RUN dism /online /enable-feature /all /featurename:IIS-ASPNET45 /NoRestart

#setup SSL in IIS
ADD iis-test.pfx \iis-test.pfx
ADD SetSSL.ps1 \SetSSL.ps1

#set entrypoint script
ADD SetSSLAndStart.cmd \SetSSLAndStart.cmd
ENTRYPOINT ["C:\\SetSSLAndStart.cmd"]

#this sample demonstrates how to set SSL with an existing pfx file in IIS
#for security consideration, you should never hardcode the password of a pfx cert in any docker scripts
#so here we pass in the password of pfx cert via the SSL_PASS env variable to be read in the SetSSL.ps1 file

#to build, execute: docker build -t set_iis_ssl .
#to run, execute: docker run --rm -e "SSL_PASS=test" -p 443:443 set_iis_ssl