<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anons', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('type');
            $table->string('icon');
            $table->string('image');
            $table->string('time');
            $table->string('day')->nullable();
            $table->text('text');
            $table->string('source')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('anons');
    }
}
