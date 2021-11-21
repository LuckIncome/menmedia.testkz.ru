<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('slug');
            $table->string('icon');
            $table->text('pretext');
            $table->text('images')->nullable();
            $table->text('videos')->nullable();
            $table->text('docs')->nullable();
            $table->text('files')->nullable();
            $table->string('image');
            $table->text('imgdesc')->nullable();
            $table->text('text');
            $table->longtext('content')->nullable();
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
        Schema::dropIfExists('events');
    }
}
