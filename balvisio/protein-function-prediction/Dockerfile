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

RUN pip install biopython==1.79 more-itertools psutil scikit-learn \
    tensorflow-text==2.9.0 tqdm transformers==4.26.1 typeguard

# We install PyTorch CPU version only since the apparently there are
# compatibility issues with CUDA 11.4
RUN pip3 install torch torchvision torchaudio \
    --extra-index-url https://download.pytorch.org/whl/cpu

# Apply the necessary patch to the Transformers library
COPY transformers.patch /root/
RUN patch \
    /usr/local/lib/python3.8/dist-packages/transformers/models/bert/tokenization_bert_tf.py \
    /root/transformers.patch

# Apply the necessary patch to the tensorflow/text library
COPY tensorflow_text.patch /root/
RUN patch \
    /usr/local/lib/python3.8/dist-packages/tensorflow_text/python/ops/fast_bert_normalizer.py \
    /root/tensorflow_text.patch

# Package for TF memory profiling (not strictly necessary but handy)
RUN pip install tensorboard_plugin_profile==2.11.1
