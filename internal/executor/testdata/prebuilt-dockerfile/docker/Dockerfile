FROM debian:12.6

# Working directory test
COPY . .

# Argument passing test
ARG SOME_ARGUMENT
RUN echo "$SOME_ARGUMENT" > /etc/some-argument-value
