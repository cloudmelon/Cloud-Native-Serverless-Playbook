# Add the stock NodeJS env to your Fission deployment
$ fission env create --name nodejs --image fission/node-env

# A javascript function that prints "hello world"
$ curl -LO https://raw.githubusercontent.com/fission/examples/master/nodejs/hello.js

# Upload your function code to fission
$ fission function create --name hello-js --env nodejs --code hello.js

# Test your function.  This takes about 100msec the first time.
$ fission function test --name hello-js
Hello, world!