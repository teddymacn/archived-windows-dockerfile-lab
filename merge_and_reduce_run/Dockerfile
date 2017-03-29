FROM microsoft/windowsservercore

#run 2 commands in sequence even if the firts one fails, but not the second fails
RUN cd notexists & md folder1

#run 2 commands in sequence only if both succeed
RUN md folder2 && md folder3

#run 2 commands in sequence only if at least one succeeds
RUN md folder4 || cd notexists

ENTRYPOINT ["cmd", "/c", "dir"]

#to build, execute: docker build -t merge_and_reduce_run .
#to override CMD, execute: docker run --rm merge_and_reduce_run

#references:
#http://stackoverflow.com/questions/8055371/how-to-run-two-commands-in-one-line-in-windows-cmd
