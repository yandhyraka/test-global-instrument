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
        Schema::create('zahirs', function (Blueprint $table) {
            $table->id('zahir_id');
            $table->date('zahir_tanggal');
            $table->string('zahir_reference_code');
            $table->string('zahir_reference_number');
            $table->string('zahir_deskripsi');
            $table->decimal('zahir_debet')->nullable();
            $table->decimal('zahir_kredit')->nullable();
            $table->decimal('zahir_saldo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('zahirs');
    }
};
