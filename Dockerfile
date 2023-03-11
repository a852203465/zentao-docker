FROM easysoft/zentao:latest

MAINTAINER Rong.Jia 852203465@qq.com

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN  apt-get update \
     && apt-get install -y gcc automake autoconf libtool make \
     && apt-get install -y git subversion