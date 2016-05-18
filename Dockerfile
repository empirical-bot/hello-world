# Start from a base image
FROM python:2.7-alpine

# Install empirical library
RUN apk add --update build-base 

# Add files
COPY . /my-approach
WORKDIR /my-approach

# TODO: These should be replaced by pip install empirical
RUN pip install zerorpc 
RUN pip install requests
RUN wget https://raw.githubusercontent.com/empiricalci/empirical.py/master/empirical.py

ENTRYPOINT ["python", "main.py"]
