# Source: https://gitlab.cern.ch/spinaote/pytorch-geometric-docker
FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt \
    && pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.0.1+cu117.html \
    && pip install torch_geometric


