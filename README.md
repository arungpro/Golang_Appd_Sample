
# Sample Golang Application Instrumentation using Golang Appdynamics Golang SDK
## Operating System
Linux is assumed for this sample. Please see Dockerfile for more details.

## Install and Setup

### AppDynamics GoLang SDK

Download latest GoSDK from https://download.appdynamics.com/download/#version=&apm=golang-sdk&os=&platform_admin_os=&events=&eum=&page=1

###  Edit below section of main.go:

```go
    // Controller
    cfg.Controller.Host = "<Your controller Host>"
    cfg.Controller.Port = "<port>"
    cfg.Controller.UseSSL = false or true
    cfg.Controller.Account = "<Your Account Name>"
    cfg.Controller.AccessKey = "<Your Access Key>"
```

## Run on local linux machine
### steps
1. Clone this project: git clone git@github.com:arungpro/Golang_Appd_Sample.git and cd < cloned project >
2. Replace golang-sdk-x64-linux-4.5.1.0.tar with lastest downloaded golang-sdk.
3. untar lastest downloaded golang-sdk to gopath: ```tar -xvf <lastest downloaded golang-sdk>.tar $GOPATH/src```
4. Build and start the application: ```go build main.go & go run main.go```
5. check the url browser or curl at http://127.0.0.1:8080


## Using the Dockerfile - Recommended one

### steps

1. Clone this project: git clone git@github.com:arungpro/Golang_Appd_Sample.git and cd < cloned project >
2. Replace golang-sdk-x64-linux-4.5.1.0.tar with lastest downloaded golang-sdk.
3. Docker Build
```
docker build -t golang:v1 .
```

4. Docker Run
```
docker run -p 8080:8080 golang:v1
```
5. check the url browser or curl at http://127.0.0.1:8080

## Real Usage!!!!
change main.go with your project code.
