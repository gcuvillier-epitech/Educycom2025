#!/bin/bash

docker build -t mon-app-python27 .

docker run -d --name mon-container-python27 --network host -v $(pwd)/data:/app/data mon-app-python27
