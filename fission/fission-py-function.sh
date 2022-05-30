# Add the stock Python env to your Fission deployment
$ fission env create --name python --image fission/python-env

# A Python function that prints "hello world"
$ curl -LO https://github.com/cloudmelon/cloud-native-spark/blob/main/my-spark-app/sample_pys_park.py

# Upload your function code to fission
$ fission function create --name hello-py --env python --code sample_pys_park.py

# Test your function.  This takes about 100msec the first time.
$ fission function test --name hello-py
