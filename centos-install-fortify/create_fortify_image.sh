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
# * FILE: insall_fortify_image.sh
# * CLASSIFICATION: Unclassified
# * AUTHOR: John J. Kim (jjkim@mitre.org)
# * CREATED: June 28th, 2019
# * UPDATED: September 12th, 2019
# * DESCRIPTION: Script to install Docker Fortify base image.
# */

docker build -t fortify_base .
docker run -it -d --name fortify_test fortify_base
docker container commit fortify_test fortify_base
docker container rm fortify_test
