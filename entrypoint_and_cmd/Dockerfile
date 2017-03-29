FROM microsoft/windowsservercore

#usually, ENTRYPOINT should be fixed and CMD to be overriden when necessary
#always use the exec form instead of shell mode for ENTRYPOINT and CMD commands and params

ENTRYPOINT ["ping", "-n", "3"]
CMD ["baidu.com"]

#to build, execute: docker build -t entrypoint_and_cmd .
#to override CMD, execute: docker run --rm entrypoint_and_cmd 360.cn

#references:
#https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd
