# Add the stock Go env to your Fission deployment
$ fission env create --name go --image fission/go-env-1.16 --builder fission/go-builder-1.16

# A Go function that prints "hello world"
$ curl -LO https://raw.githubusercontent.com/fission/examples/master/go/hello.go

# Upload your function code to fission
$ fission function create --name hello-go --env go --src hello.go --entrypoint Handler

# Wait for your source code to be built, package status should be succeeded. This may take a few minutes.
$ fission pkg list | grep hello-go
hello-go-8bb933b5-b12b-499b-a951-ee2245c8f1b5 succeeded    go     23 Nov 21 10:55 IST

# Test your function. This takes about 100msec the first time.
$ fission function test --name hello-go
Hello, world!