FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install g++ valgrind -y

WORKDIR /project
COPY main.cpp .
COPY start.sh .

ENTRYPOINT ["sh", "./start.sh"]
