<?php

namespace Database\Seeders;

use App\Models\ProductDiscounts;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductDiscountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        ProductDiscounts::create([
            'product_id' => 3,
            'code' => 'eggs',
            'discount' => '10',
            'discount_type' => 'percentage',
            'quantity' => '3',
        ]); 
        ProductDiscounts::create([
            'product_id' => 4,
            'code' => 'coke',
            'discount' => '16',
            'discount_type' => 'percentage',
            'quantity' => '5',
        ]); 
        ProductDiscounts::create([
            'product_id' => 5,
            'code' => 'tissues',
            'discount' => '42',
            'discount_type' => 'percentage',
            'quantity' => '4',
        ]); 
        ProductDiscounts::create([
            'product_id' => 6,
            'code' => 'coffee',
            'discount' => '3',
            'discount_type' => 'percentage',
            'quantity' => '2',
        ]); 
        ProductDiscounts::create([
            'product_id' => 7,
            'code' => 'muffins',
            'discount' => '14',
            'discount_type' => 'percentage',
            'quantity' => '7',
        ]); 
        ProductDiscounts::create([
            'product_id' => 8,
            'code' => 'soda',
            'discount' => '12',
            'discount_type' => 'percentage',
            'quantity' => '6',
        ]); 
        ProductDiscounts::create([
            'product_id' => 9,
            'code' => 'cereal',
            'discount' => '9',
            'discount_type' => 'percentage',
            'quantity' => '8',
        ]); 
        ProductDiscounts::create([
            'product_id' => 10,
            'code' => 'sugar',
            'discount' => '13',
            'discount_type' => 'percentage',
            'quantity' => '4',
        ]); 
        ProductDiscounts::create([
            'product_id' => 11,
            'code' => 'butter',
            'discount' => '19',
            'discount_type' => 'percentage',
            'quantity' => '6',
        ]); 
        ProductDiscounts::create([
            'product_id' => 12,
            'code' => 'sauce',
            'discount' => '23',
            'discount_type' => 'percentage',
            'quantity' => '2',
        ]);
    }
}
