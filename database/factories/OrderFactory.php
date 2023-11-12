<?php

namespace Database\Factories;

use App\Models\Order;
use App\Models\Customer;
use App\Models\Kendaraan;
use Faker\Generator as Faker;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $customer = Customer::factory()->create();
        $kendaraan = Kendaraan::factory()->create();

        return [
            // 'customer_id' => $this->faker->numberBetween(1, 3),
            // 'total_biaya' => $this->faker->randomFloat(2, 1000, 10000),
            // 'status' => $this->faker->randomElement(['Lunas', 'Belum lunas']),
        ];
    }
}
