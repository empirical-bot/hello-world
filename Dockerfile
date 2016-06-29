# Start from a base image
FROM python:2.7-alpine

# Install empirical library
RUN apk add --update build-base wget

# TODO: These should be replaced by pip install empirical
RUN pip install empiricalci

# Add files
COPY . /my-approach
WORKDIR /my-approach

ENTRYPOINT ["python", "main.py"]
