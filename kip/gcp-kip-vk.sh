#!/bin/bash
#Define a set of environment variables to be used in resource creations.
#

gcloud auth application-default login

terraform init

terraform apply -var-file myenv.tfvars
