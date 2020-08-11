# docker-cpp
Code for creating a docker image to use Linux (ubuntu), g++, and Valgrind. Will prevent a host of problems that comes from working on a mac.

## Before getting started, please make sure you have these setup:
* Docker installed
* Docker is running

## Getting started:
This repo has a memory leak

1. Clone this repo and change directory into it
1. Pull the latest ubuntu base image from docker
    ```sh
    docker pull ubuntu
    ```
1. Update ```start.sh``` to run your tests and valgrind
1. Update ```Dockerfile``` to make sure you copied over all files (Can be improved using volumes maybe?)
1. Create the docker image:
    ```sh
    docker build -t cpp_test_runner .
    ```
1. Run the docker image on a container:
    ```sh
    docker run -t cpp_test_runner .
    ```

## Goal:
Have automated linter, static analysis, testing with dynamic analysis (valgrind) with detailed report on what failed
