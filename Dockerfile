FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    g++ \
    valgrind \
    cppcheck
WORKDIR /project
COPY main.cpp .
COPY start.sh .

ENTRYPOINT ["sh", "./start.sh"]
