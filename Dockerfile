##
# Dockerfile to wrap a Django application in self-repair system
#
#

FROM ubuntu

MAINTAINER Delta-3

# Add the application resources URL
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Add essitial build tools
RUN apt-get install git

# Install Python and Basic Python Tools
RUN apt-get install -y python python-dev python-distribute python-pip

# Install web framework
RUN pip install django

# Get Django application to wrap
RUN git clone /app


# Install any web specific libraries
# RUN pip install -r /app/requirements.txt

# Get middle ware
RUN git clone 

# Get SNORT 
RUN git clone

# Port to expose
EXPOSE 80

# Set dir where CMD will execute
WORKDIR /app

CMD python server.py


