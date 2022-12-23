FROM balvisio/tensorflow:2.9.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

RUN apt update && \
    apt install -y git

RUN git clone https://github.com/deepmind/surface-distance.git && \
    pip install surface-distance/

RUN pip install art focal-loss pillow prettytable psutil scikit-learn mlflow==2.0.1


