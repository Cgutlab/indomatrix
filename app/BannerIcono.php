<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BannerIcono extends Model
{
	protected $table = "banner_iconos";
    protected $fillable = [
        'imagen', 'titulo', 'texto', 'orden'
    ];
}
