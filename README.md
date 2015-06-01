marklee77.mysql
=================

[![Build Status](https://travis-ci.org/marklee77/ansible-role-mysql.svg?branch=master)](https://travis-ci.org/marklee77/ansible-role-mysql)

The purpose of this role is to deploy mysql onto Ubuntu. 

Role Variables
--------------

Configuration variables are shown below along with default values.

- mysql_bind_address: 127.0.0.1
- mysql_port: 3306

Example Playbook
-------------------------

    - hosts: all
      sudo: True
      roles:
        - mysql

License
-------

GPLv2

Author Information
------------------

http://stillwell.me
