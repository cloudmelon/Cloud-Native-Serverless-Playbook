# Add the stock Java env to your Fission deployment
$ fission environment create --name java --image fission/jvm-env --builder fission/jvm-builder --keeparchive --version 3

# A Java function that prints "hello world"
$ mkdir -p src/main/java/io/fission/
$ curl -L https://raw.githubusercontent.com/fission/examples/master/jvm/java/src/main/java/io/fission/HelloWorld.java \
  -o src/main/java/io/fission/HelloWorld.java
# pom.xml contains dependencies for the function.
$ curl -LO https://raw.githubusercontent.com/fission/environments/master/jvm/examples/java/pom.xml

# Upload your function code to fission via zip
$ zip java-src-pkg.zip -r src/ pom.xml
$ fission package create --name hello-pkg --env java --src java-src-pkg.zip
Package 'hello-pkg' created

# Wait for your source code to be built, package status should be succeeded. This may take a few minutes.
$ fission pkg list | grep hello-pkg
hello-pkg                                     succeeded    java   23 Nov 21 11:19 IST

# Test your function. This takes about 100msec the first time.
$ fission function create --name hello-java --env java --pkg hello-pkg --entrypoint io.fission.HelloWorld
$ fission function test --name hello-java
Hello World!