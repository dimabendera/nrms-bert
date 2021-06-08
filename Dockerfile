FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# apt install
RUN apt-get update
RUN apt-get clean

WORKDIR /var/www/nrms-bert
COPY ./requirements_docker.txt /var/www/nrms-bert/src/requirements_docker.txt
COPY ./src /var/www/nrms-bert/src

# install pip requirements
RUN pip3 install --no-cache-dir torch-scatter -f https://pytorch-geometric.com/whl/torch-1.7.0+cu110.html
RUN pip3 install --no-cache-dir torch-sparse -f https://pytorch-geometric.com/whl/torch-1.7.0+cu110.html
RUN pip3 install --no-cache-dir torch-cluster -f https://pytorch-geometric.com/whl/torch-1.7.0+cu110.html
RUN pip3 install --no-cache-dir torch-spline-conv -f https://pytorch-geometric.com/whl/torch-1.7.0+cu110.html
RUN pip3 install --no-cache-dir torch-geometric
RUN pip3 install --no-cache-dir jupyterlab
RUN pip3 install --no-cache-dir pytorch-lightning
RUN pip3 install --no-cache-dir -r requirements_docker.txt

WORKDIR /var/www/nrms-bert
