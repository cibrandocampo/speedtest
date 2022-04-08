FROM ubuntu:20.04 AS builder

RUN apt update && apt install git -y

WORKDIR /
RUN git clone https://github.com/openspeedtest/Speed-Test

WORKDIR /Speed-Test/
RUN rm -rf CONTRIBUTING.md LICENSE.txt README.md Rakefile
RUN env


FROM nginx:alpine
WORKDIR /
RUN rm -rf /usr/share/nginx/html
COPY --from=builder Speed-Test/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]