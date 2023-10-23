FROM golang:bookworm
LABEL authors="calmera"

RUN go install github.com/nats-io/natscli/nats@latest
RUN apt update && apt -y install android-tools-adb

CMD ["/bin/bash"]