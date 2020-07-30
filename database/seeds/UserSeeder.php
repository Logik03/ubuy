<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	// Create 10 users in the user table
	        factory(App\User::class, 10)->create()->each( function ($user) {
	    
	    // seed the relationship with 5 tasks for  each user
	    	$tasks = factory(App\Task::class, 5)->make();
	    	 
	    	 $user->tasks()->saveMany($tasks);
        });
    }
}
