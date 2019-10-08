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
# * UPDATED: Septemeber 12th, 2019
# * DESCRIPTION: Dockerfile for initializing / running Fortify scan
# */

FROM fortify_base

WORKDIR $FORTIFY
COPY entrypoint_run_fortify.sh $FORTIFY/
COPY filter.txt $FORTIFY/

#RUN yum install xpdf

ENV PROJECTNAME=temp
ENV FILEPATH=./temp/**/*.java
ENV OUTPUTDIR=./Fortify_output
ENV OUTPUTFPR=$OUTPUTDIR/output.fpr
ENV OUTPUTPDF=$OUTPUTDIR/fortify_report.pdf

ENTRYPOINT ["./entrypoint_run_fortify.sh"]
