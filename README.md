# OpenSpeedTest Dockerized

Dockerized version for network speed test (https://github.com/openspeedtest/Speed-Test).

The construction is done in two steps - Multi-stage (https://docs.docker.com/develop/develop-images/multistage-build/), the first is based on a Ubi8 image which downloads and cleans the repository (https://github.com/openspeedtest/Speed-Test). 

The second step, copies the necessary files from the first and is ready for execution.

## Docker build

`docker build -t speedtest-dockerized:latest -f Dockerfile .`

## Docker run

`docker run -d -p 8080:80 speedtest-dockerized`