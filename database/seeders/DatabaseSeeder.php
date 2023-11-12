<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Customer;
use App\Models\Customer_kendaraan;
use App\Models\Customer_kendaraan_order;
use App\Models\Kendaraan;

use App\Models\Order;

use App\Models\Type;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::create([
            'name' => 'sintya tri wahyu adityawati',
            'email' => 'sintya.tia2704@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(3)->create();

        Type::create([
            'type' => 'Mobil',
        ]);

        Type::create([
            'type' => 'Motor',
        ]);

        Type::create([
            'type' => 'Truck',
        ]);

        Customer::factory(10)->create();
        Kendaraan::factory(10)->create();
        Customer_kendaraan::factory(5)->create();
        // Order::factory(3)->create();
        Customer_kendaraan_order::factory(5)->create();

        





    }
}
