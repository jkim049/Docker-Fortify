#### centos-run-fortify

# Files

1. Dockerfile
2. entrypoint_run_fortify.sh
3. filter.txt
4. create_run_fortify_image.sh
5. start_fortify_run_container.sh

# Dockerfile

Dockerfile to build the Fortify run base image.

# entrypoint_run_fortify.sh

Scripts to run a Fortify scan on the specified source code.

# filter.txt

A simple .txt file that is used to specify which issues / category of findings to ignore during the scans.

# create_run_fortify_image.sh

Script to build the fortify_run base image.

# start_fortify_run_container.sh

Scripts to start the fortify_run_container.



# ENV Variables

1. PROJECTNAME: The name of the Project being scanned.
2. FILEPATH: The file path to the source code being scanned.
3. OUTPUTDIR: Output directory of the scan results.
4. OUTPUTFPR: Output directory & name of the .fpr file.
5. OUTPUTPDF: Output directory & name of the .pdf file.
