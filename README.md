# Airflow example

This project is to demonstrate setting up of an automated ECS cluster running airflow.
Ansible is used to automate tasks, Git to hold our repo code, Dockerhub to automate our
container builds and AWS for hosting infrastructure.


## Getting Started

To get started, please download and setup docker for your operating system. Instructions can be found at:

```
https://docs.docker.com/engine/installation/
```

git-crypt is used to encrypt aws credentials , ssh keys and other sensitive information

### Prerequisites

Docker and an AWS account, current AWS keys are baked into the docker image,
for future usage these can be runtime arguments.

You will also require git and the key file.

```
docker run -d image -e AWS_SECRET_KEY_ID=TEST -e AWS_SECRET_ACCESS_KEY=TEST
```

### Creating the cluster

To create the cluster, simply run 

```
docker run -d fahad0000/ansible:latest 
```

### Reviewing the code

First clone the repo

```
git-crypt clone https://github.com/xsamurai/airflow-example.git
```

Unlock the encrypted files

```
git crypt unlock /path/to/secret_file
```

### AWS Resources used in this example

VPC, ElasticCache, ECS, RDS, AutoScalingGroup, ELB.


### Time constraint related choices


1. I usually prefer to build my own containers unless they are an official release
or I need something specific.  Due to lack of time I am using puckel/docker-airflow as
my base image to build off of.

