#!/bin/bash

image_name=$(grep FROM Dockerfile | awk '{ print $2 }' | awk -F\/ '{ print $2 }')

docker build . -t balvisio/${image_name}
