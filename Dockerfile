FROM rocker/r-base:latest
WORKDIR /app
COPY parlament.R .
RUN Rscript -e "install.packages(c('ggplot2','ggpol'), repos='http://cran.rstudio.com/')"
CMD ["Rscript", "parlament.R"]
