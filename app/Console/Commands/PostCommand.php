<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

use app\Models\User;

class PostCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'post:create';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Creamos un post en la base de datos';

    /**
     * Execute the console command.
     */
    public function handle()
    {
      //  $post = new User;
     //   $post->save();
    }
}
