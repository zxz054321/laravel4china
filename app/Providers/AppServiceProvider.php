<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->registerIdeHelperServiceProvider();
    }

    protected function registerIdeHelperServiceProvider()
    {
        if ($this->app->environment() !== 'production') {
            $provider = \Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider::class;

            if (class_exists($provider)) {
                $this->app->register($provider);
            }
        }
    }
}
