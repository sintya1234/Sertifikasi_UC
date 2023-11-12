<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_kendaraan_order extends Model
{
    use HasFactory;
    protected $table = "customer_kendaraan_orders";
    protected $fillable = [
        'order_id', 'customer_kendaraan_id'
    ];



    public function order()
    {
        return $this->belongsTo(Order::class, 'order_id', 'id');
    }

    public function customer_kendaraan()
    {
        return $this->belongsTo(Customer_kendaraan::class, 'customer_kendaraan_id', 'id');
    }
}
