<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('kendaraans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('type_id')->constrained()->cascadeOnDelete();;
            $table->string('model');
            $table->integer('tahun');
            $table->integer('jumlah_penumpang');
            $table->string('manufaktur');
            $table->decimal('harga', 10, 2);

        // Atribut khusus "Mobil"
            $table->string('tipe_bahan_bakar')->nullable();
            $table->integer('luas_bagasi')->nullable();

        // Atribut khusus "Truck"
            $table->integer('jumlah_roda_ban')->nullable();
            $table->integer('luas_area_kargo')->nullable();

        // Atribut khusus "Motor"
            $table->integer('ukuran_bagasi')->nullable();
            $table->integer('kapasitas_bensin')->nullable();

            $table->timestamps();

            // $table->foreign('type_id')->references('id')->on('kendaraans')->onDelete('cascade');
        });


    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kendaraans');
    }
};
