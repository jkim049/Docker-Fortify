#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# * 
# * PROJECT: Feedback Prototype Tool.
# * FILE: Dockerfile
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: June 19th, 2019
# * UPDATED: September 12th, 2019
# * DESCRIPTION: Dockerfile for initializing / installing Fortify scan
# */
#

FROM centos:7

#Change working directory and copy all files over to said directory
ENV FORTIFY=/Fortify_Install
WORKDIR $FORTIFY
COPY entrypoint_build_fortify.sh $FORTIFY
COPY fortify-installer $FORTIFY 

ENTRYPOINT ["./entrypoint_build_fortify.sh"]
