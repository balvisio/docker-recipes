FROM tensorflow/tensorflow:2.9.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

RUN apt-get update && \
    apt-get install -y git vim

RUN /usr/bin/python3 -m pip install --upgrade pip

RUN git clone https://github.com/balvisio/imbalanced-learn.git && \
    pushd imbalanced-learn && \
    git checkout ba/MLSMOTE && \
    pip install . && \
    popd

RUN git clone https://github.com/balvisio/ifeatpro.git && \
    pushd ifeatpro && \
    git checkout ba/require-python-3.8 && \
    pip install . && \
    popd

RUN pip install biopython==1.79 more-itertools psutil scikit-learn tqdm typeguard
