<?php

namespace Database\Seeders;
use App\Models\Store;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class StoreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('stores')->insert([
            ['store'=>'Brooklyn',
            'location'=>'NY'],

            ['store'=>'Queens',
            'location'=>'NY'],

            ['store'=>'The Bronx',
            'location'=>'NY'],

            ['store'=>'Manhattan',
            'location'=>'NY'],

            ['store'=>'Staten Island',
            'location'=>'NY'],

            ['store'=>'Rochester',
            'location'=>'NY'],
            
            
        ]);
    }
}
