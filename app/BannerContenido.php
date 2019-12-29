<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BannerContenido extends Model
{
	protected $table = "banner_contenido";
    protected $fillable = [
        'imagen', 'titulo', 'texto'
    ];
}
