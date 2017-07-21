const elixir = require('laravel-elixir');

require('laravel-elixir-vue-2');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for your application as well as publishing vendor resources.
 |
 */

elixir((mix) => {
    mix.sass('app.scss')
        .webpack('app.js');

    if ('production' == process.env.NODE_ENV) {
        // Single file:
        // mix.version('css/app.css');
        // or
        // mix.version('js/app.js');

        // Multiple files:
        // mix.version(['css/all.css', 'js/app.js']);
    }
});
