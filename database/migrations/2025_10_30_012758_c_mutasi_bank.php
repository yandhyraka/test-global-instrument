<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('mutasi_banks', function (Blueprint $table) {
            $table->id('mutasi_bank_id');
            $table->date('mutasi_bank_tanggal');
            $table->string('mutasi_bank_deskripsi');
            $table->decimal('mutasi_bank_debet')->nullable();
            $table->decimal('mutasi_bank_kredit')->nullable();
            $table->decimal('mutasi_bank_saldo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('mutasi_banks');
    }
};
