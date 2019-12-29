<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    protected $table = "categorias";
    protected $fillable = [
        'titulo', 'imagen', 'ruta', 'orden'
    ];

    public function producto()
    {
      return $this->hasMany('App\Producto');
    }
}