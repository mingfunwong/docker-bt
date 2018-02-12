FROM centos:7.4.1708

MAINTAINER Mingfun Wong "mingfun.wong.chn@gmail.com"

COPY ./start.sh /start.sh

RUN yum install -y wget \
    && wget -O install.sh http://download.bt.cn/install/install.sh \
    && sed -i 's/read -p "Do you want to install Bt-Panel to the $setup_path directory now?(y\/n): " go;/go="y"/g' install.sh \
    && sed -i 's/password=`cat \/dev\/urandom | head -n 16 | md5sum | head -c 8`/password="admin123"/g' install.sh \
    && sh install.sh \
    && chmod +x /start.sh

VOLUME /www/wwwroot

EXPOSE 21 80 443 3306 8888 39000-40000

CMD ["/start.sh"]