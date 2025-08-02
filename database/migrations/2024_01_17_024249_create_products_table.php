<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->dateTime('date');
            $table->integer('P1');
            $table->integer('P2');
            $table->integer('P3');
            $table->integer('P4');
            $table->integer('P5');
            $table->integer('P6');
            $table->integer('P7');
            $table->integer('P8');
            $table->integer('P9');
            $table->text('teks');
        });
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
}
