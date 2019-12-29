<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GaleriaModelo extends Model
{
    protected $table = "galerias_modelos";
    protected $fillable = [		
		'imagen', 'titulo', 'texto', 'fecha', 'orden', 'seccion', 'id_productos_modelos'
    ];

    public function modelogaleria()
    {
    	return $this->belongsTo('App\ModeloGaleria', 'id_productos_modelos');
    }    
    
}