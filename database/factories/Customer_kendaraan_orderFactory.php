<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\customer_kendaraan_order>
 */
class Customer_kendaraan_orderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            
                'order_id' => $this->faker->numberBetween(1, 5),
                'customer_kendaraan_id' => $this->faker->numberBetween(1, 5),
            ];
       
    }
}
