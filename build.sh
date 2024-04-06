#!/bin/bash

docker build -t capstone .
docker run -d -it --name react-app -p 80:80 capstone
docker tag capstone  jeevaarasu/react-app
