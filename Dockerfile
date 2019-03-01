FROM golang:latest 
MAINTAINER ArunG

RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
# golang-sdk-x64-linux-4.5.1.0.tar is lastest appd go agent build at this time 01 March 2019
ADD golang-sdk-x64-linux-4.5.1.0.tar $GOPATH/src

RUN go build -o main . 
CMD ["/app/main"]

