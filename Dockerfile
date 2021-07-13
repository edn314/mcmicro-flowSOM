FROM python:3

# install r-base... I think there may be more required than that
RUN apt install r-base

RUN pip install pandas