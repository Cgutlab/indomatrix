<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoriaLuminaria extends Model
{
	protected $table = "categorias_luminarias";
    protected $fillable = [
        'imagen', 'titulo', 'texto', 'orden',
    ];
    
    public function productoluminaria()
    {
    	return $this->hasMany('App\ProductoLuminaria');
    }
}