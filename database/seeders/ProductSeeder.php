<?php

namespace Database\Seeders;

use App\Models\Products;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Products::create([
            'name' => 'eggs',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'coke',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'tissues',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'coffee',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'muffins',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'soda',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'cereal',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'sugar',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'butter',
            'descrition' => '',
            'price' => rand(0, 100),
        ]); 
        Products::create([
            'name' => 'eggs',
            'descrition' => '',
            'price' => rand(0, 100),
        ]);
    }
}
