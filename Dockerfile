#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/* && \
  pip install pyzmq

COPY zmqircsend.py /data/

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/usr/bin/python","/data/zmqircsend.py"]
