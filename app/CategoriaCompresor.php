<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoriaCompresor extends Model
{
	protected $table = "categorias_compresors";
    protected $fillable = [
        'imagen', 'titulo', 'texto', 'orden',
    ];
    
    public function ProductoCompresor()
    {
    	return $this->hasMany('App\ProductoCompresor');
    }
}