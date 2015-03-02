marklee77.mysql
=================

[![Build Status](https://travis-ci.org/marklee77/ansible-role-mysql.svg?branch=master)](https://travis-ci.org/marklee77/ansible-role-mysql)

The purpose of this role is to deploy mysql onto Ubuntu. There is also an
support for an experimental "dockerized" deployment. This dockerized deployment
copies the role to the target machine and uses the original ansible-based
functionality to build a docker image, and then uses recent ansible features to
manage the running service. The dockerized deployment can theoretically deploy
to any Linux platform with a running docker install and the docker-py python
client library installed.

Travis status above refers only to the non-dockerized deployment, as docker does 
not (easily) run on travis.

Role Variables
--------------

Configuration variables are shown below along with default values.

- mysql_repository_mirror: http://mirrors.coreix.net/mysql
- mysql_version: 10.0
- mysql_mysql_root_password: random value
- mysql_bind_address: 127.0.0.1
- mysql_port: 3306

The variables below only affect the dockerized deployment:

- mysql_dockerized_deployment: false
- mysql_docker_username: default
- mysql_docker_imagename: mysql
- mysql_docker_containername: mysql

Example Playbook
-------------------------

    - hosts: all
      sudo: True
      roles:
        - marklee77.mysql

License
-------

GPLv2

Author Information
------------------

http://stillwell.me

Known Issues
------------

- the dockerized deployment still requires sudo access, even though a member of 
  the docker group should be able to build and deploy containers without sudo.
