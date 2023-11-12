<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer_kendaraan extends Model
{
    use HasFactory;
    protected $table = "customer_kendaraans";
    protected $fillable = [
        'customer_id', 'kendaraan_id', 'jumlah'
    ];

    public function kendaraan()
    {
        return $this->belongsTo(Kendaraan::class, 'kendaraan_id', 'id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id', 'id');
    }
    public function orders()
    {
        return $this->belongsToMany(Order::class,'customer_kendaraan_orders');
    }
}
