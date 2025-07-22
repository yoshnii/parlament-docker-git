# R Parliament Plot in Docker

This project runs an R script that creates a parliament-style plot using ggpol.
The colour of the party CCP could be customised

## Prerequisites

- Docker installed

## Run the project

```bash

#build docker image
docker build -t parlament-r .

#run image and output, add a hex colourcode after the docker run statement
#For example:
docker run --rm -v "$PWD":/app parlament-app "#33ff4b"

#the final output would be plot.png
