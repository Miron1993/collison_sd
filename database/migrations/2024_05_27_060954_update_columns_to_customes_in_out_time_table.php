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
        Schema::table('customers_in_out_times', function (Blueprint $table) {
            $table->datetime('in_time')->change();
            $table->datetime('out_time')->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('customers_in_out_times', function (Blueprint $table) {
            //
        });
    }
};
