#! /bin/bash

cd ./HelloWorldPrograms

echo "C"
gcc -o ./c/hello.exe ./c/hello.c
./c/hello.exe

echo "C++"
g++ -o ./cpp/hello.exe ./cpp/hello.cpp
./cpp/hello.exe

echo "Java"
javac ./java/hello.java
java -cp ./java HelloWorld

echo "Python"
python ./python/hello.py

echo "Ruby"
ruby ./ruby/hello.rb
