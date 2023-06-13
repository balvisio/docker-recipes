#!/bin/bash

image_name="pytorch-geometric:2.0.1-1"
docker build . -t balvisio/${image_name}
