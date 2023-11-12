<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Kendaraan>
 */
class KendaraanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'type_id' => $this->faker->numberBetween(1, 3),
            'model' => $this->faker->word,
            'tahun' => $this->faker->year,
            'jumlah_penumpang' => $this->faker->numberBetween(1, 8),
            'manufaktur' => $this->faker->company,
            'harga' => $this->faker->randomFloat(2, 10000, 100000),

            'tipe_bahan_bakar' => $this->faker->randomElement(['Bensin', 'Solar']),
            'luas_bagasi' => $this->faker->numberBetween(5, 50),

            'jumlah_roda_ban' => $this->faker->numberBetween(10, 18),
            'luas_area_kargo' => $this->faker->numberBetween(50, 200),
            
            'ukuran_bagasi' => $this->faker->numberBetween(30, 100),
            'kapasitas_bensin' => $this->faker->numberBetween(5, 20),
        ];



    }
}
