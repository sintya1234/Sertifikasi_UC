<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $table = "orders";
    protected $fillable = ['customer_id', 'total_biaya', 'status'];

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id');
    }

    // public function category()
    // {
    //     return $this->belongsTo(Category::class); //belongs to berarti 1 to 1
    // }

    public function customer_kendaraans()
    {
        return $this->belongsToMany(Customer_kendaraan::class,'customer_kendaraan_orders');
    }

}
