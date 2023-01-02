FROM balvisio/tensorflow:2.9.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

RUN apt update && \
    apt install -y git

RUN git clone https://github.com/deepmind/surface-distance.git && \
    pip install surface-distance/

RUN /usr/bin/python3 -m pip install --upgrade pip
RUN pip install art focal-loss mlflow==2.0.1 pillow==9.0.1 \
    prettytable psutil scikit-image==0.19.3 scikit-learn==1.1.3

