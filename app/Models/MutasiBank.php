<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MutasiBank extends Model {
    protected $primaryKey = 'mutasi_bank_id';
    protected $fillable = [
        'mutasi_bank_tanggal',
        'mutasi_bank_deskripsi',
        'mutasi_bank_debet',
        'mutasi_bank_kredit',
        'mutasi_bank_saldo',
        'created_at',
        'updated_at',
    ];
}
