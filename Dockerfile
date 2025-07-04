# 使用官方 PHP + Apache 镜像
FROM php:8.1-apache

# 安装 mysqli 扩展（连接 MySQL 用的）
RUN docker-php-ext-install mysqli

# 复制项目文件到容器
COPY . /var/www/html/

# 启用 Apache rewrite 模块（如有需要）
RUN a2enmod rewrite
