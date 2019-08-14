#!/bin/bash

#-----------------------------------------------------------------------------
#                                   6-19-18                                  |
#                      Script for installation and setup of Fortify          |
#                                                                            |
#-----------------------------------------------------------------------------
#Command allows alias command to work inside the script
shopt -s expand_aliases

#Run executable linux installer for Fortify without user input
#All options are detailed int he HPE_Security...16.20_linux_x64.run.options file
$FORTIFY/HPE_Security_Fortify_SCA_and_Apps_1X.XX_linux_x64.run --mode unattended

#
#BELOW IS FOR DEBUGGING / TESTING PURPOSES ONLY
#THIS IS DONE WITHIN RUN_FORTIFY

#Add alias to excute sourceanalyzer command
#alias sourceanalyzer='$FORTIFY/Fortify/bin/sourceanalyzer'
#source ~/.bash_profile

#Import SCA Rules pack
#fortifyupdate -import $FORTIFY/rules_pack.zip -Xmx512m

#sh