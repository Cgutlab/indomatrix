<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    protected $table = "productos";
    protected $fillable = [
    	'titulo', 'breve', 'resena', 'texto1', 'texto2', 'ficha', 'imagen', 'id_categoria', 'orden'
    ];

    public function categoria()
    {
      return $this->belongsTo('App\Categoria', 'id_categoria');
    }
}