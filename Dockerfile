FROM centos:7

#Change working directory and copy all files over to said directory
ENV FORTIFY=/Fortify_Install
WORKDIR $FORTIFY
ADD . $FORTIFY

ENTRYPOINT ["./build_fortify.sh"]
