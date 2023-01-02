#!/bin/bash

image_name=mouse-image-segmentation:$(grep FROM Dockerfile | awk -F: '{ print $2 }')

subversion=$(cat subversion)
docker build . -t balvisio/${image_name}-${subversion}
