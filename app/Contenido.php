<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contenido extends Model
{
    //

    protected $fillable = [
        'imagen','titulo','subtitulo','texto','ruta'
    ];
}

