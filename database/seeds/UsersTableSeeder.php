<?php

use App\Profile;
use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user= User::create([
            'name'=>'jibon',
            'email'=>'jibon@gmail.com',
            'password'=>bcrypt('123456'),
            'admin'=>1
        ]);

        Profile::create([
           'user_id'=>$user->id,
            'avatar'=>'uploads/avatars/avatar.png',
            'about'=>'I am jibon .I am a web developer.I am jibon .I am a web developer.I am jibon .I am a web developer.',
            'facebook'=>'facebook.com',
            'youtube'=>'youtube.com'
        ]);
    }
}
