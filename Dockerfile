FROM debian:latest

RUN apt-get update -y \
    && apt-get install -y openssl \
    && apt-get install -y libssl-dev \
    && apt-get install -y make \
    && apt-get install -y g++ \
    && mkdir -p /root/stockholm \
    && mkdir -p /root/infection/sub1 \
    && mkdir -p /root/infection/sub2 \
    && echo 123 > /root/infection/test1.txt \
    && echo 456 > /root/infection/sub1/test2.txt \
    && echo 789 > /root/infection/sub2/test3.txt

COPY ./src /root/stockholm/src
COPY ./include /root/stockholm/include
COPY ./Makefile /root/stockholm/Makefile

WORKDIR /root/stockholm

RUN make

CMD ["sleep", "infinity"]
