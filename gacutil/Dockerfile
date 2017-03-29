FROM microsoft/windowsservercore

#copy minimized gacutil binary to container
COPY tools.zip /
RUN powershell -Command "expand-archive -Path 'c:\tools.zip' -DestinationPath 'c:\'"

#install a DLL to GAC with gacutil
COPY Microsoft.VisualStudio.QualityTools.UnitTestFramework.dll /
RUN /tools/gacutil.exe /i Microsoft.VisualStudio.QualityTools.UnitTestFramework.dll

ENTRYPOINT ["cmd", "/c", "/tools/gacutil.exe", "/l", "Microsoft.VisualStudio.QualityTools.UnitTestFramework"]

#to build, execute: docker build -t gacutil .
#to run, execute: docker run --rm gacutil

