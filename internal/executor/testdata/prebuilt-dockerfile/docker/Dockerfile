FROM debian:bullseye

# Working directory test
COPY . .

# Argument passing test
ARG SOME_ARGUMENT
RUN echo "$SOME_ARGUMENT" > /etc/some-argument-value
