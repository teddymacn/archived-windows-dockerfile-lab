FROM microsoft/windowsservercore

#on windows, ADD & COPY almost the same

ADD test_folder /test_folder_add
COPY test_folder /test_folder_copy

ADD test_folder /test_folder_add2
COPY test_folder /test_folder_copy2

#unlike on linux, ADD doesn't support uncompressing zip files on windows

ADD test_folder.zip /
COPY test_folder.zip /

ADD test_folder.zip /test_folder_add2.zip
COPY test_folder.zip /test_folder_copy2.zip

#how to ADD or COPY files containing space in the name

ADD ["file name with space.txt", "/"]
COPY ["file name with space.txt", "/file name with space copy.txt"]

#overwriting files also works

ADD test.txt /test_overwrite_add.txt
ADD test_overwrite_add.txt /test_overwrite_add.txt

COPY test.txt /test_overwrite_copy.txt
COPY test_overwrite_copy.txt /test_overwrite_copy.txt

#add files with wildchar also works

ADD wildchar* /
RUN del wildchar*
COPY wildchar* /

#the only obvious difference of ADD and COPY on windows is, you can use ADD for downloading files, but not COPY

ADD https://github.com/jquery/jquery/archive/3.2.1.zip /
ADD https://github.com/jquery/jquery/archive/3.2.1.zip /3.2.1_2.zip

ENTRYPOINT ["cmd", "/c", "dir"]

#to build, execute: docker build -t add_and_copy .
#to run, execute: docker run --rm add_and_copy

#references:
#https://www.ctl.io/developers/blog/post/dockerfile-add-vs-copy/
#https://docs.microsoft.com/en-us/virtualization/windowscontainers/manage-docker/manage-windows-dockerfile
