FROM balvisio/tensorflow:2.9.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

RUN apt update && \
    apt install -y git

RUN git clone https://github.com/balvisio/mlflow.git && \
    cd mlflow && \
    git checkout ba/keras-model-save-format && \
    pip install .

RUN pip install art focal-loss pillow prettytable psutil scikit-learn


