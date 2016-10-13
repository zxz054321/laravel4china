<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Symfony\Component\Console\Exception\CommandNotFoundException;

class SafelyIdeHelper extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'safely:ide-helper';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Call ide-helper commands safely';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        try {
            \Artisan::call('ide-helper:generate');
            \Artisan::call('ide-helper:meta');
        } catch (CommandNotFoundException $e) {
            // Do nothing
        }
    }
}
