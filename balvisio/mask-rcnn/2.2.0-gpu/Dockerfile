FROM tensorflow/tensorflow:2.2.0-gpu
MAINTAINER Bruno Alvisio <bruno.alvisio@gmail.com>

# Block to fix error:
#
# W: GPG error: https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64  InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY A4B469963BF863CC
# E: The repository 'https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64  InRelease' is no longer signed.
#
# Source: https://github.com/NVIDIA/nvidia-docker/issues/1631#issuecomment-1112682423
RUN rm /etc/apt/sources.list.d/cuda.list
RUN rm /etc/apt/sources.list.d/nvidia-ml.list
RUN apt-key del 7fa2af80
RUN apt-get update && apt-get install -y --no-install-recommends wget
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-keyring_1.0-1_all.deb
RUN dpkg -i cuda-keyring_1.0-1_all.deb

RUN apt update && \
    apt install -y git python3.7

RUN python3.7 -m pip install --upgrade pip

RUN git clone https://github.com/balvisio/Mask-RCNN-TF2.git && \
    cd Mask-RCNN-TF2 && \
    git checkout ba/test-tf-2.2-version && \
    pip3.7 install -r requirements.txt

