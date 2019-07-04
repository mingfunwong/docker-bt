# 宝塔Linux面板 For Docker

## 运行
```
docker run -p 21:21 \
           -p 80:80 \
           -p 443:443 \
           -p 888:888 \
           -p 3306:3306 \
           -p 8888:8888 \
           -p 39000-40000:39000-40000 \
           -d --name bt \
           mingfunwong/bt
```

## 管理后台
```
地址：http://localhost:8888/
账号：admin
密码：admin123
```

## PHP 运行环境
已为您编译好 Apache 2.4 + PHP 5.6 + MySQL 4.7 + Pure-Ftpd 1.0.47 + phpMyAdmin 4.7。请使用以下命令：
```
docker-compose up -d
```
或者
```
docker run -p 21:21 \
           -p 80:80 \
           -p 443:443 \
           -p 888:888 \
           -p 3306:3306 \
           -p 8888:8888 \
           -p 39000-39050:39000-39050 \
           -d --name bt \
           mingfunwong/bt:lamp5.6
```

