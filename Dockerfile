FROM mcr.microsoft.com/bioconductor/bioconductor_docker

RUN pip3 install pandas

RUN R -e 'BiocManager::install(c("flowCore","FlowSOM"))'

COPY . /app