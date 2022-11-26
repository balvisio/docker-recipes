#!/bin/bash

image_name=mask-rcnn:$(grep FROM Dockerfile | awk -F: '{ print $2 }')

docker build . -t balvisio/${image_name}
