# NURO case study

This repository stores deployment files for deploying the NURO application case study.


## Deploy the NURO case study

A deployment of the NURO application case study can be launched using Apache Brooklyn. 

# Setup your environment

In order to easily work with the content of this repository one can download Brooklyn and launch it as speci

- Download [Apache Brooklyn](https://www.apache.org/dyn/closer.lua/incubator/brooklyn/apache-brooklyn-0.8
.0-incubating/apache-brooklyn-0.8.0-incubating-bin.tar.gz) and unpack it in your $BROOKLYN_HOME

- Run Apache Brooklyn from there using something like:
  `$BROOKLYN_HOME/bin/brooklyn launch`

## Deploying the NURO case study on the cloud

- Copy and paste into the Brooklyn Create Application form the content of deployment_cloud.yml.
- Edit `location` specifying the cloud provider and the credentials to use it, in the YAML format.
- run it by editing the YAML blueprint with the your own credentials.

## Deploying the NURO case study on BYON

Make sure you have [Vagrant](https://www.vagrantup.com/), [Virtualbox](https://www.virtualbox.org/)

- Configure your local environemnt:
```bash
cd $NURO_CASESTUDY_HOME/
vagrant up
```
This spins up a virtual environment, made up of 2 VMs, that is accessible at `192.168.100.12` and `192.168.100.13`.

Browse to the Brooklyn webapp (it is usually on http://localhost:8081) and copy and paste the content of deployment_local.yml into the Brooklyn Create Application form, then press "next".

If you want to deploy the NURO application on a single local node you have to do is to edit the VagrantFile setting NODE_COUNT=1 and to save it. Then repeat the same process but using deployment_local_single_yml.


