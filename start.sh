#!/bin/env bash

g++ -o main main.cpp

valgrind --leak-check=full ./main
