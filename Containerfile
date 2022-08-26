FROM docker.io/debian:11.3
LABEL authors="Kosmas Hench" \
      description="dummy container for testing purposes"

# import custom dummy script
RUN apt update && apt install -y procps
COPY dummy_script /
RUN chmod 755 dummy_script && \
    mv dummy_script /usr/local/bin/