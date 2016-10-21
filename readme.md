# Laravel 中国版

[![Build Status](https://travis-ci.org/zxz054321/laravel-boilerplate.svg?branch=master)](https://travis-ci.org/zxz054321/laravel-boilerplate)

对官方源码作了适量修改，使之更符合国情、更适合作为新项目基石，但不建议初学者使用。

主要特性：

1. 基于 Laravel 5.2 （版本选择的原则是：最新的稳定）
2. Laravel 安装器可一键安装框架依赖、一键执行优化、自动设置符号链接以及自动设置权限
3. Node 模块安装器可一键安装 Laravel Elixir 并执行 gulp 任务
4. 自动生成 APP_KEY
5. 内置中文语言包
6. 时区默认为中国上海
7. 更优秀的 IDE 代码提示
8. .gitignore 忽略 IDE 相关文件
9. 演示页面去除 Google 字体引用
10. CSS 预编译器推荐使用 Less
11. 推崇 Repository 设计模式

## Laravel 安装器

此安装器脚本针对 Ubuntu 系统编写，可自动完成以下操作：

1. 全局安装 PHP Composer
2. 复制 `.env` 文件
3. 执行 `composer install --no-dev` 安装依赖
4. 执行 `php artisan key:generate` 生成App key
5. 执行优化
6. 创建符号链接（将` public/storage` 目录链接去 `storage/app/public`目录）
7. 设置应用目录用户为 `www`
8. 赋予 `bootstrap/cache` 目录和 `storage` 目录读写权限

### 使用方法

在应用根目录下执行命令：

```
sudo chmod 777 install.sh && ./install.sh
```

### 参数说明

| 参数   | 说明                                       |
| ---- | ---------------------------------------- |
| -q   | 安静模式，脚本将静默执行，适用于自动部署的场景                  |
| -e   | （安静模式下必填）指定 env 文件。示例： `-e .env.example` |
| -k   | （可选）执行 `php artisan key:generate`        |
| -o   | （可选）执行 autoload、路由、配置优化                  |

## Node 模块安装器

此安装器脚本针对 Ubuntu 系统编写，可自动完成以下操作：

1. 全局安装 Node.js v4.x LTS
2. 设置 npm 使用淘宝镜像，大大提高下载速度
3. 全局安装 gulp
4. 安装 Laravel Elixir
5. 执行 `gulp --production` 编译前端资源

### 使用方法

在应用根目录下执行命令：

```
sudo chmod 777 install-node.sh && ./install-node.sh
```

# Laravel PHP Framework

[![Build Status](https://travis-ci.org/laravel/framework.svg)](https://travis-ci.org/laravel/framework)
[![Total Downloads](https://poser.pugx.org/laravel/framework/d/total.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/framework/v/stable.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/framework/v/unstable.svg)](https://packagist.org/packages/laravel/framework)
[![License](https://poser.pugx.org/laravel/framework/license.svg)](https://packagist.org/packages/laravel/framework)

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, queueing, and caching.

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb inversion of control container, expressive migration system, and tightly integrated unit testing support give you the tools you need to build any application with which you are tasked.

## Official Documentation

Documentation for the framework can be found on the [Laravel website](http://laravel.com/docs).

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](http://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
