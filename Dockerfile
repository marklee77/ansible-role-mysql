FROM marklee77/baseimage-ansible:latest
MAINTAINER Mark Stillwell <mark@stillwell.me>

COPY . /var/cache/dockerbuild/mysql
WORKDIR /var/cache/dockerbuild/mysql

RUN ansible-playbook -i inventories/local.ini provisioning/install.yml -e '{ \
      "mysql_dockerize_context" : "docker" }' && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN mkdir -p /etc/my_init.d && \
    cp scripts/startmysql.sh /etc/my_init.d/10-mysql && \
    chmod 0755 /etc/my_init.d/10-mysql

VOLUME [ "/root", "/etc/mysql", \
         "/var/run/mysqld", "/var/lib/mysql", "/var/log/mysql" ]

EXPOSE 3306
