FROM golang:bookworm
LABEL authors="calmera"

RUN apt update && apt install -y unzip
RUN go install github.com/nats-io/natscli/nats@latest
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip && \
    unzip platform-tools-latest-linux.zip -d /usr/share && \
    echo "export PATH=$PATH:/usr/share/platform-tools" >> ~/.bashrc

CMD ["/bin/bash"]