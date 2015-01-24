#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Pull base image.
FROM dockerfile/python

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y libzmq-dev && \
  pip install pyzmq

COPY zmqircsend.py /data/

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/usr/bin/python","/data/zmqircsend.py"]
