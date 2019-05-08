#!/bin/bash

DATA_DIR=./data
cd $DATA_DIR
url=https://web.stanford.edu/group/ethnic/publicdata/repdata.zip
    curl -O $url
# update the timestamp on the resulting file using touch
# do not remove, this will keep make happy and avoid re-downloading of the data once you have it

touch repdata.zip
