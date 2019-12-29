<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class ModeloGaleria extends Model
{
	protected $table = "modelos_galerias";
    protected $fillable = [
        'imagen', 'imagen1', 'imagen2','titulo', 'orden', 'seccion',
    ];
    public function galeriamodelo()
    {
   	return $this->hasMany('App\GaleriaModelo');
    }
 
}

