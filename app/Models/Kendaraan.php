<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kendaraan extends Model
{
    use HasFactory;
    protected $table = "kendaraans";
    protected $fillable = [
        'type_id','model', 'tahun', 'jumlah_penumpang', 'manufaktur', 'harga','tipe_bahan_bakar', 'luas_bagasi', 'jumlah_roda_ban', 'luas_area_cargo', 'ukuran_bagasi', 'kapasitas_bensin',
    ];

    public function types()
    {
        return $this->belongsTo(Type::class, 'type_id');
    }

    public function customers()
    {
        return $this->belongsToMany(Customer::class, 'customer_kendaraans');
    }

    // protected $table = 'kendaraans';
    
}
