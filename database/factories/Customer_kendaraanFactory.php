<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Customer_kendaraan>
 */
class Customer_kendaraanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'customer_id' => $this->faker->numberBetween(1, 5),
            'kendaraan_id' => $this->faker->numberBetween(1, 9),
            'jumlah' => $this->faker->numberBetween(1, 3),
        ];
    }
}
