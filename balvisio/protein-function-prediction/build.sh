#!/bin/bash

image_name="protein-function-prediction:$(cat version)"
docker build . -t balvisio/${image_name}
