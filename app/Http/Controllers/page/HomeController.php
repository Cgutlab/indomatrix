<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Homecliente;
use App\Destacado;
use App\Contenido;
use App\Slider;
use App\Trabajamo;
use App\BannerContenido;
use App\BannerIcono;
use App\Red;

class HomeController extends Controller
{
    public function index(){
      $sliders = Slider::where('seccion', 1)->orderBy('orden','asc')->get();
      $destacados = Destacado::orderBy('orden','asc')->get();
      $trabajamos = Trabajamo::orderBy('orden','asc')->get();
      $banners = BannerContenido::where('id', 1)->get();
      $bannersIconos = BannerIcono::orderBy('orden','asc')->get();
      $contenidos = Contenido::all();
      $active='home';
        return view('page.home', compact('sliders','destacados','contenidos', 'active', 'trabajamos','banners','bannersIconos'));
    }
}
