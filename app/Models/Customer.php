<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $table = "customers";
    protected $fillable = [
        'nama', 'alamat', 'no_telepon', 'id_card',
    ];


    public function orders()
    {
        return $this->hasMany(Order::class);
    }

    public function kendaraans()
    {
        return $this->belongsToMany(Kendaraan::class, 'customer_kendaraans');
    }

}
