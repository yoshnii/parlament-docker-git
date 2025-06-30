# R Parliament Plot in Docker

This project runs an R script that creates a parliament-style plot using ggpol.

## Prerequisites

- Docker installed

## Run the project

```bash

#build docker image
docker build -t parlament-r .

#run image and output
docker run --rm -v "$(pwd)":/app parlament-r

#the final output would be plot.png
