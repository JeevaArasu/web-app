#!/bin/bash

docker build -t capstone .

docker run -d --name react-app -p 80:80 capstone