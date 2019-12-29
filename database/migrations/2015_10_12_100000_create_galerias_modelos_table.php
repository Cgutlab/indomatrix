<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

Schema::dropIfExists('galerias_modelos');

class CreateGaleriasModelosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {
        Schema::create('galerias_modelos', function (Blueprint $table) {
            $table->increments('id');
            $table->text('imagen')->nullable();
            $table->text('titulo')->nullable();
            $table->text('texto')->nullable();
            $table->text('fecha')->nullable();
            $table->text('orden')->nullable();  
            $table->text('seccion')->nullable();
            $table->integer('id_productos_modelos')->unsigned();
            $table->foreign('id_productos_modelos')->references('id')->on('modelos_galerias')->onDelete('cascade');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('galerias_modelos');
    }
}
