<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Zahir extends Model {
    protected $primaryKey = 'zahir_id';
    protected $fillable = [
        'zahir_tanggal',
        'zahir_reference_code',
        'zahir_reference_number',
        'zahir_deskripsi',
        'zahir_debet',
        'zahir_kredit',
        'zahir_saldo',
        'created_at',
        'updated_at',
    ];
}
