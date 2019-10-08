#!/bin/bash

#/*
# * The overall classification of this file is UNCLASSIFIED.
# *
# * NOTICE: This software was produced for the U. S. Government under Basic
# * Contract No. W56KGU-18-D-0004, and is subject to the Rights in
# * Noncommercial Computer Software and Noncommercial Computer Software
# * Documentation Clause 252.227-7014 (FEB 2012) (C) 2019 The MITRE Corporation.
# * 
# * PROJECT: Feedback Prototype Tool.
# * FILE: run_fortify.sh
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: June 19th, 2019
# * UPDATED: August 26th, 2019
# * DESCRIPTION: Creates directory, imports Fortify's rules and scans source code.
# * Then generates a report in PDF format and appends the date & time to the end of
# * the file
# */


#Command allows alias command to work inside the script
shopt -s expand_aliases

#Check to see if directory exists
#If yes continue
#If no create the directory
if [ ! -d $OUTPUTDIR ] ;
	then
	mkdir $OUTPUTDIR
fi

#Add alias to excute sourceanalyzer command
alias sourceanalyzer='$FORTIFY/Fortify/bin/sourceanalyzer'
source ~/.bash_profile

#Import SCA Rules pack
fortifyupdate -import $FORTIFY/S7da1ef17-871b-4bc4-9d44-23734183db1e.zip -Xmx1G

#Build then scan all imported java files
sourceanalyzer -Xmx1G -b $PROJECTNAME $FILEPATH
sourceanalyzer -Xmx1G -b $PROJECTNAME -scan -filter filter.txt -f $OUTPUTFPR

sleep 1

#Generate PDF of the scan results
#Template specifies that all results should be shown
ReportGenerator -template DeveloperWorkbook.xml -format pdf -f $OUTPUTPDF -source $OUTPUTFPR

#Create a timestamp
TIMESTAMP=$(date "+%Y.%m.%d-%H.%M")

#Change the name to append a timestamp at the end of the file name (But before the file extension.
mv $OUTPUTPDF "${OUTPUTPDF%.pdf}.${TIMESTAMP}.pdf";
mv $OUTPUTFPR "${OUTPUTFPR%.fpr}.${TIMESTAMP}.fpr";


cd $OUTPUTDIR

ls -1t | tail -n +7 | xargs rm -f
echo "done"

#Keep looping otherwise will result in any layers above to forcefully exit
#while true; do sleep 1000; done
