<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Extensions\Helpers;
use Illuminate\Http\Request;
use Illuminate\Html;
use App\GaleriaModelo;
use App\ModeloGaleria;

class GaleriaModeloController extends Controller
{
    //
    public function create($id)
    {
        $categorias = ModeloGaleria::find($id);
        $usuario = Auth::user();
        $galerias_seccion = 'active';
        $galerias_create = 'active';
        return view('adm.galeriamodelo.crearGaleriaModelo', compact('usuario','galerias_seccion','galerias_create', 'categorias'));
    }

    public function store(Request $request)
    {
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('imagen'), 'galeriamodelo');
        $file_save ? $datos['imagen'] = $file_save : false;

        GaleriaModelo::create($datos);
        $success = 'Galeria creado correctamente';
        return back()->with('success', $success);
    }

        public function showCategoria()
        {                
            $usuario = Auth::user();

            $modelos = ModeloContenido::all();
            $modelos_seccion = 'active';
            $modelos_edit = 'active';
            $modelos = ModeloContenido::paginate(15);

            return view('adm.modelocontenido.editarModeloContenidos', compact('usuario', 'modelos','modelos_seccion','modelos_edit', 'modelos_gals'));
        }

    public function lists(Request $request, $id)
    {                   
        $category = ModeloGaleria::find($id);
        $galerias = GaleriaModelo::where('id_productos_modelos', $id)->paginate(8);
        $usuario = Auth::user();
        $galerias_seccion = 'active';
        $galerias_edit = 'active';
        
        return view('adm.galeriamodelo.editarGaleriaModelos', compact('usuario', 'galerias','galerias_seccion','galerias_edit','category'));
    }

    public function edit($id)
    {
        $galeria = GaleriaModelo::find($id);
        $usuario = Auth::user();
        $galerias_seccion = 'active';
        $galerias_edit = 'active';
        $categorias = ModeloGaleria::all();
        return view('adm.galeriamodelo.editarGaleriaModelo', compact('galeria','usuario','galerias_seccion','galerias_edit','categorias'));
    }

    public function update(Request $request, $id)
    {
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('imagen'), 'galeriamodelo');
        $file_save ? $datos['imagen'] = $file_save : false;

        $galeria = GaleriaModelo::find($id);
        $galeria->fill($datos);
        $galeria->save();
        $success = 'Galeria editada correctamente';
        return back()->with('success', $success);
    }

    public function destroy($id)
    {
        $galeria = GaleriaModelo::find($id);
        $galeria->delete();
        $success = 'Galeria eliminado correctamente';
        return back()->with('success', $success);
    }
}
