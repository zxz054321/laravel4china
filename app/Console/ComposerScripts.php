<?php
/**
 * Created by PhpStorm.
 * User: abel
 * Date: 10/15/16
 * Time: 11:44 AM
 */

namespace App\Console;

use Composer\Script\Event;
use Dotenv\Dotenv;
use Illuminate\Foundation\Application;

class ComposerScripts extends \Illuminate\Foundation\ComposerScripts
{
    public static function postInstall(Event $event)
    {
        parent::postInstall($event);

        $laravel = new Application(getcwd());
        $envFile = $laravel->environmentPath();

        (new Dotenv($envFile))->load();

        if (empty(env('APP_KEY'))) {
            require $laravel->bootstrapPath() . '/app.php';

            /** @var Kernel $artisan */
            $artisan = app(\Illuminate\Contracts\Console\Kernel::class);

            $artisan->call('key:generate');
        }
    }
}