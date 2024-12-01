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
        Schema::create('sales', function (Blueprint $table) {
            $table->id();
            $table->string('store');
            $table->string('title');
            $table->string('author');
            $table->integer('quantity');
            $table->decimal('price', 10, 2);
            $table->string('email')->nullable();
            $table->string('address')->nullable();
            $table->decimal('totalPrice', 15, 2);
            $table->string('zip')->nullable();
            $table->date('date');
            $table->string('name');
            $table->string('card_num');
            $table->string('expiration');
            $table->string('cvv');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sales');
    }
};
