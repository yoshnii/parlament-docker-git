FROM rocker/r-base:latest
WORKDIR /app
COPY app/parlament.R .
RUN Rscript -e "install.packages(c('ggplot2','ggpol','dplyr'), repos='http://cran.rstudio.com/')"
CMD ["Rscript", "parlament.R"]
