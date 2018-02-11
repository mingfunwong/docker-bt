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

## 其他说明
1. 运行 FTP 需要进行以下设置：软件管理 - Pure-Ftpd - 设置 - 配置修改，首行加入 ```ForcePassiveIP 0.0.0.0```
2. 在 Windows / Mac OS 系统下运行由于 VirtualBox 的性能限制，请缩少 FTP 端口范围，```39000-40000``` 改为 ```39000-39030```。同时到软件管理 - Pure-Ftpd - 设置 - 配置修改找到 ```PassivePortRange 39000 40000``` 改为 ``` PassivePortRange 39000 39030 ```。
3. 已为您编译好 Apache 2.4 + MySQL MariaDB 10.1 + Pure-Ftpd 1.0.47 + phpMyAdmin 4.4 + PHP 5.6 + xcache。请使用以下命令：
```
docker run -p 21:21 \
           -p 80:80 \
           -p 443:443 \
           -p 888:888 \
           -p 3306:3306 \
           -p 8888:8888 \
           -p 39000-40000:39000-40000 \
           -d --name bt \
           mingfunwong/bt:lamp5.6
```
