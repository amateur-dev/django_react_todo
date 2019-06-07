FROM dipeshsukhani/ubuntu_python3.7:latest
WORKDIR /home
COPY . .
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
# RUN apt-get install postgres
RUN apt-get install sudo
RUN sudo apt install python3-pip -y
RUN alias python=python3
RUN alias pip=pip3
RUN pip3 install -r requirements.txt
CMD tail -f /dev/null