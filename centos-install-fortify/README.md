#### centos-install-fortify

# Files

1. Dockerfile
2. entrypoint_build_fortify.sh
3. create_fortify_image.sh
4. fortify-installer directory

# Dockerfile

Dockerfile for copying the fortify-installer directory and the *entrypoint_build_fortify.sh* script.

# entrypoint_build_fortify.sh

Runs the Fortify installer using the pre-configured settings.

# create_fortify_image.sh

Script to build the fortify_base image, install Fortify, then commit the container as the the new base image. This new base image now has Fortify installed and ready to use.

To run use the following command: `./create_fortify_image.sh`

# fortify-installer directory

Contains files necessary for the installation of Fortify.


** All external files, licenses, executables, etc have been removed **

