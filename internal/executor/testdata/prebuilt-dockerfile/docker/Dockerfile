FROM debian:11.2

# Working directory test
COPY . .

# Argument passing test
ARG SOME_ARGUMENT
RUN echo "$SOME_ARGUMENT" > /etc/some-argument-value
