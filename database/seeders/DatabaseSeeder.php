<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use App\Models\Product;
use App\Models\Employe;
use Illuminate\Database\Seeder;
use Database\Factories\EmployeFactory;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void

    {
  
         \App\Models\Category::factory(6)->create();
         Product::factory(22)->create();
         
         Employe::factory(10)->create();
      

    }
}
