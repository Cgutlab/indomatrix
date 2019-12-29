<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Empresa;
use App\Slider;
use App\Tiempo;
use App\Publicacion;

class EmpresaController extends Controller
{
    public function index(){
    	$sliders = Slider::where('seccion', 2)->orderBy('orden','asc')->get();
    	$empresa = Empresa::find(1);
    	$tiempos = Tiempo::orderBy('orden','asc')->get();
    	$publicacions = Publicacion::orderBy('orden','asc')->get();
      $active='empresa';
    	 return view('page.empresa', compact('empresa','active','sliders','tiempos','publicacions'));
    }
}
