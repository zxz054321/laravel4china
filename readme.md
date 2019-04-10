# Laravel 中国版

[![Build Status](https://travis-ci.org/zxz054321/laravel4china.svg?branch=master)](https://travis-ci.org/zxz054321/laravel4china)

对官方原版源码作了适量修改，但仍保持原汁原味，与官方原版的使用体验完全一致。Laravel 中国版所做的修改都是可选的，这使得框架更符合国情、更适合作为新项目基石。仅建议**具有一定 Laravel 经验**的开发者使用。

主要特性：

1. 基于 Laravel 5.6 （版本选择的原则是：最新的稳定版）
2. Laravel 安装器可一键执行常用的部署命令
3. Node 模块安装器可一键安装 Laravel Mix 并编译静态资源
4. 自动生成 IDE 代码提示辅助文件（基于 [Laravel IDE Helper](https://github.com/barryvdh/laravel-ide-helper)）
5. 自动生成 APP_KEY
5. 内置中文语言包
6. 时区默认为中国上海
7. .gitignore 忽略 IDE 相关文件
9. 演示页面去除 Google 字体引用

## Laravel 安装器

此安装器脚本针对 Ubuntu 系统编写，可自动完成以下操作：

1. 全局安装 PHP Composer
2. 复制 `.env` 文件
3. 执行 `composer install --no-dev` 安装依赖
4. 执行 `php artisan key:generate` 生成App key
5. 执行优化
6. 创建符号链接（将` public/storage` 目录链接去 `storage/app/public`目录）
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

1. 全局安装 Node.js v6.x LTS
2. 设置 npm 使用淘宝镜像，大大提高下载速度
3. 安装 Laravel Mix 及相关 Node.js 依赖
4. 执行 `npm run production` 编译前端资源

### 使用方法

在应用根目录下执行命令：

```
sudo chmod 777 install-node.sh && ./install-node.sh
```

<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1100 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost you and your team's skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[British Software Development](https://www.britishsoftware.co)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- [UserInsights](https://userinsights.com)
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)
- [iMi digital](https://www.imi-digital.de/)
- [Earthlink](https://www.earthlink.ro/)
- [Steadfast Collective](https://steadfastcollective.com/)
- [We Are The Robots Inc.](https://watr.mx/)
- [Understand.io](https://www.understand.io/)
- [Abdel Elrafa](https://abdelelrafa.com)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).
