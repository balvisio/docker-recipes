FROM tensorflow/tensorflow:2.9.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

RUN apt-get update && \
    apt-get install -y git vim

RUN pip install matplotlib tensorflow_addons tensorflow_datasets
