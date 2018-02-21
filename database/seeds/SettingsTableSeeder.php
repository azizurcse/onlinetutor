<?php

use App\Setting;
use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::create([
            'site_name'=>'Online Tutor',
            'address'=>'malibagh,dhaka',
            'contact_number'=>'01956422380',
            'contact_email'=>'azizur.jibon@gmail.com'
        ]);
    }
}
