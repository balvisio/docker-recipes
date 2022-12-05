FROM balvisio/tensorflow:2.9.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

RUN apt update && \
    apt install -y git

RUN git clone https://github.com/balvisio/Mask-RCNN-TF2.git && \
    cd Mask-RCNN-TF2 && \
    pip install -r requirements_gpu.txt

