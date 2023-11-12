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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')->constrained()->cascadeOnDelete();;
            $table->decimal('total_biaya', 10, 2)->nullable();
            $table->enum('status', ['Lunas', 'Belum lunas'])->default('Belum lunas');
            $table->timestamps();

            // Menambahkan foreign key untuk kendaraan_customer_id
            //  $table->foreign('customer_id')->references('id')->on('orders')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
