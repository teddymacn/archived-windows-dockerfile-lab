FROM microsoft/windowsservercore

COPY test_folder.zip /

#unzip
RUN powershell -Command "expand-archive -Path 'c:\test_folder.zip' -DestinationPath 'c:\'"

ENTRYPOINT ["cmd", "/c", "dir"]

#to build, execute: docker build -t unzip .
#to override CMD, execute: docker run --rm unzip

