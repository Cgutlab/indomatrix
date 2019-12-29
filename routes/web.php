<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::post('contacto/enviar', ['uses' => 'page\ContactoController@enviarMail', 'as' => 'contacto.enviar']);
Route::post('servicio', ['uses' => 'page\ServicioController@validateCuenta', 'as' => 'cuenta.validarlogin']);

Route::get('/', function () {
    return view('page/home');
});	

	Route::get('/', ['uses' => 'page\HomeController@index', 'as' => 'index']);

    Route::get('presupuesto', ['uses' => 'page\PresupuestoController@index', 'as' => 'presupuesto']);
	Route::post('presupuesto/enviar', ['uses' => 'page\PresupuestoController@enviarMail', 'as' => 'presupuesto.enviar']);

	Route::get('empresa', ['uses' => 'page\EmpresaController@index', 'as' => 'empresax']);//usado
  	Route::get('calidad', ['uses' => 'page\CalidadController@index', 'as' => 'calidad']);//usado
	Route::get('textiles', ['uses' => 'page\TextilesController@index', 'as' => 'textiles']);//usado
	Route::get('equipamiento', ['uses' => 'page\EquipamientoController@index', 'as' => 'equipamiento']);
	Route::get('servicios', ['uses' => 'page\ServicioController@index', 'as' => 'servicios']);
	Route::get('galeria', ['uses' => 'page\GaleriaController@index', 'as' => 'galeria']);
	Route::get('productos',  ['uses' => 'page\ProductosController@index', 'as' => 'productos']);
	Route::get('novedad/{id}', ['uses' => 'page\NovedadController@index', 'as' => 'novedad']);
	Route::get('novedades', ['uses' => 'page\NovedadesController@index', 'as' => 'novedades']);
	
	Route::get('soluciones', ['uses' => 'page\SolucionController@index', 'as' => 'soluciones']);

	Route::get('modelos/{id}', ['uses' => 'page\ModelosController@index', 'as' => 'modelos']);

	Route::get('luminarias', ['uses' => 'page\LuminariasController@index', 'as' => 'luminarias']);
	Route::get('luminaria/{id}', ['uses' => 'page\LuminariaController@index', 'as' => 'luminaria']);
	Route::get('productol/{id}', ['uses' => 'page\ProductolController@index', 'as' => 'productol']);//usado

	Route::get('compresors', ['uses' => 'page\CompresorsController@index', 'as' => 'compresors']);
	Route::get('compresor/{id}', ['uses' => 'page\CompresorController@index', 'as' => 'compresor']);
	Route::get('productoc/{id}', ['uses' => 'page\ProductocController@index', 'as' => 'productoc']);//usado

  	Route::get('textiles', ['uses' => 'page\TextilesController@index', 'as' => 'textiles']);
  	Route::get('textil/{id}', ['uses' => 'page\TextilController@index', 'as' => 'textil']);
	Route::get('productot/{id}', ['uses' => 'page\ProductotController@index', 'as' => 'productot']);//usado

  	Route::get('adhesivos', ['uses' => 'page\AdhesivosController@index', 'as' => 'adhesivos']);
  	Route::get('adhesivo/{id}', ['uses' => 'page\AdhesivoController@index', 'as' => 'adhesivo']);
  	Route::get('aproducto/{id}', ['uses' => 'page\AProductoController@index', 'as' => 'aproducto']);//usado

	Route::get('filter/{id_categoria}', ['uses' => 'page\NovedadesController@filter', 'as' => 'filter']);
	Route::get('filter_novedades/{id}', ['uses' => 'page\NovedadesController@show', 'as' => 'filter_novedades']);
	Route::post('search', ['uses' => 'page\NovedadesController@buscar', 'as' => 'buscar_novedad']);

	Route::get('cliente', ['uses' => 'page\ClienteController@index', 'as' => 'cliente']);
	Route::get('descarga', ['uses' => 'page\DescargaController@index', 'as' => 'descarga']);
	Route::get('contacto', ['uses' => 'page\ContactoController@index', 'as' => 'contacto']);
	Route::post('enviar', ['uses' => 'page\ContactoController@enviarMail', 'as' => 'enviar']);
	Route::get('listas', ['uses' => 'page\ListasController@index', 'as' => 'listas']);

	Route::get('cuenta_c', ['uses' => 'page\CuentaController@createCuenta', 'as' => 'cuenta_c']);
	Route::post('cuenta_s', ['uses' => 'page\CuentaController@storeCuenta', 'as' => 'cuenta_s']);
	Route::get('cuenta_r', ['uses' => 'page\CuentaController@recuperarCuenta', 'as' => 'cuenta_r']);
	Route::post('cuenta_d', ['uses' => 'page\CuentaController@sendCuenta', 'as' => 'cuenta_d']);

	Route::group(['prefix' => 'adm'], function() {
		Route::resource('login', 'adm\LoginController');
		Route::get('logout', ['uses' => 'adm\LoginController@logout' , 'as' => 'adm.logout']);
	});

/* 
ADM
*/

	Route::group(['prefix' => 'adm', 'middleware' => 'guest'], function() {

	Route::get('/', function() {
		$usuario = Auth::user();
		return view('adm.index', compact('usuario'));
	});

  	Route::resource('usuarios', 'adm\UserController');
	Route::resource('metadatos', 'adm\MetadatosController');
	Route::resource('datos', 'adm\DatosController');
	Route::resource('logos', 'adm\LogosController');
	Route::resource('slider', 'adm\SliderController');

	Route::group(['prefix' => 'home'], function() {
	  	Route::group(['prefix' => 'slider'], function() {
	  		Route::get('create', 'adm\HomeController@crearSlider');
	  		Route::get('show', 'adm\HomeController@editarSliders');
	  		Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarSlider', 'as' => 'home.slider.edit']);
	  	});

	  	Route::group(['prefix' => 'destacado'], function() {
	  		Route::get('show', 'adm\HomeController@editarDestacados');
	  		Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarDestacado', 'as' => 'home.destacado.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\HomeController@updateDestacado', 'as' => 'home.destacado.update']);
	  	});

	  	Route::group(['prefix' => 'contenido'], function() {
	  		Route::get('show', 'adm\HomeController@editarContenidos');
	  		Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarContenido', 'as' => 'home.contenido.edit']);
	  		Route::put('update/{id}', ['uses' => 'adm\HomeController@updateContenido', 'as' => 'home.contenido.update']);
	  	});
  	});

	Route::group(['prefix' => 'empresa', 'as' => 'empresa'], function() {
	  	Route::group(['prefix' => 'contenido'], function() {
	  		Route::get('edit', ['uses' => 'adm\EmpresaController@editarContenido', 'as' => '.contenido.edit']);
	      	Route::get('edit/{id}', ['uses' => 'adm\EmpresaController@editarSlider', 'as' => '.slider.edit']);
	      	Route::put('update/{id}', ['uses' => 'adm\EmpresaController@updateContenido', 'as' => '.contenido.update']);
	  	});	

	  	Route::group(['prefix' => 'slider'], function() {
	  		Route::get('create', 'adm\EmpresaController@crearSlider');
	  		Route::get('show', 'adm\EmpresaController@editarSliders');
	  		Route::get('edit/{id}', ['uses' => 'adm\EmpresaController@editarSlider', 'as' => 'empresa.slider.edit']);
	  	});
	});

	Route::group(['prefix' => 'redes', 'as' => 'redes'], function() {
	    Route::get('create', ['uses' => 'adm\RedesController@createRedes', 'as' => '.create']);
	    Route::post('store', ['uses' => 'adm\RedesController@storeRedes', 'as' => '.store']);
	    Route::get('show', ['uses' => 'adm\RedesController@showRedes', 'as' => '.show']);
	    Route::get('edit/{id}', ['uses' => 'adm\RedesController@editRedes', 'as' => '.edit']);
	    Route::put('update/{id}', ['uses' => 'adm\RedesController@updateRedes', 'as' => '.update']);
	    Route::delete('destroy/{id}', ['uses' => 'adm\RedesController@destroyRedes', 'as' => '.destroy']);
    });

	/* CATEGORIAS LUMINARIAS */
	Route::group(['prefix' => 'categorialuminaria', 'as' => 'categorialuminaria'], function() {
		Route::get('create', ['uses' => 'adm\CategoriaLuminariaController@createCategoria', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\CategoriaLuminariaController@storeCategoria', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\CategoriaLuminariaController@showCategoria', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\CategoriaLuminariaController@editCategoria', 'as' => '.edit']);		
		Route::put('update/{id}', ['uses' => 'adm\CategoriaLuminariaController@updateCategoria', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\CategoriaLuminariaController@destroyCategoria', 'as' => '.destroy']);
	});

  	/* PRODUCTOS LUMINARIAS */
	Route::group(['prefix' => 'productoluminaria', 'as' => 'productoluminaria'], function() {
		Route::get('create', ['uses' => 'adm\ProductoLuminariaController@createProducto', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ProductoLuminariaController@storeProducto', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ProductoLuminariaController@showProducto', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\ProductoLuminariaController@editProducto', 'as' => '.edit']);
		Route::get('lists/{id}', ['uses' => 'adm\ProductoLuminariaController@listsProducto', 'as' => '.lists']);/*Ver*/
		Route::put('update/{id}', ['uses' => 'adm\ProductoLuminariaController@updateProducto', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ProductoLuminariaController@destroyProducto', 'as' => '.destroy']);
	});

	/* CATEGORIAS COMPRESORS */
	Route::group(['prefix' => 'categoriacompresor', 'as' => 'categoriacompresor'], function() {
		Route::get('create', ['uses' => 'adm\CategoriaCompresorController@createCategoria', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\CategoriaCompresorController@storeCategoria', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\CategoriaCompresorController@showCategoria', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\CategoriaCompresorController@editCategoria', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\CategoriaCompresorController@updateCategoria', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\CategoriaCompresorController@destroyCategoria', 'as' => '.destroy']);
	});

  	/* PRODUCTOS COMPRESORS */
	Route::group(['prefix' => 'productocompresor', 'as' => 'productocompresor'], function() {
		Route::get('create', ['uses' => 'adm\ProductoCompresorController@createProducto', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ProductoCompresorController@storeProducto', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ProductoCompresorController@showProducto', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\ProductoCompresorController@editProducto', 'as' => '.edit']);
    Route::get('lists/{id}', ['uses' => 'adm\ProductoCompresorController@listsProducto', 'as' => '.lists']);/*Ver*/
		Route::put('update/{id}', ['uses' => 'adm\ProductoCompresorController@updateProducto', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ProductoCompresorController@destroyProducto', 'as' => '.destroy']);
	});

	/* MODELOS CONTENIDOS */
	Route::group(['prefix' => 'modeloscontenidos', 'as' => 'modeloscontenidos'], function() {
		Route::get('create', ['uses' => 'adm\ModeloContenidoController@createCategoria', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ModeloContenidoController@storeCategoria', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ModeloContenidoController@showCategoria', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\ModeloContenidoController@editCategoria', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\ModeloContenidoController@updateCategoria', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ModeloContenidoController@destroyCategoria', 'as' => '.destroy']);
	});

  	/* MODELOS GALERIAS ó PRODUCTOS */
	Route::group(['prefix' => 'modelosgalerias', 'as' => 'modelosgalerias'], function() {
		Route::get('create', ['uses' => 'adm\ModeloGaleriaController@createArticulo', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ModeloGaleriaController@storeArticulo', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ModeloGaleriaController@showArticulo', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\ModeloGaleriaController@editArticulo', 'as' => '.edit']);
		Route::get('lists/{id}', ['uses' => 'adm\ModeloGaleriaController@listsArticulo', 'as' => '.lists']);
		Route::put('update/{id}', ['uses' => 'adm\ModeloGaleriaController@updateArticulo', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ModeloGaleriaController@destroyArticulo', 'as' => '.destroy']);
	});

	/* CATEGORIAS NOVEDADES */
	Route::group(['prefix' => 'categorianovedad', 'as' => 'categorianovedad'], function() {
		Route::get('create', ['uses' => 'adm\CategoriaNovedadController@createCategoria', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\CategoriaNovedadController@storeCategoria', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\CategoriaNovedadController@showCategoria', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\CategoriaNovedadController@editCategoria', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\CategoriaNovedadController@updateCategoria', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\CategoriaNovedadController@destroyCategoria', 'as' => '.destroy']);
	});

	/* PRODUCTOS NOVEDADES */
	Route::group(['prefix' => 'productonovedad', 'as' => 'productonovedad'], function() {
		Route::get('create', ['uses' => 'adm\ProductoNovedadController@createProducto', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ProductoNovedadController@storeProducto', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ProductoNovedadController@showProducto', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\ProductoNovedadController@editProducto', 'as' => '.edit']);
    Route::get('lists/{id}', ['uses' => 'adm\ProductoNovedadController@listsProducto', 'as' => '.lists']);/*Ver*/
		Route::put('update/{id}', ['uses' => 'adm\ProductoNovedadController@updateProducto', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ProductoNovedadController@destroyProducto', 'as' => '.destroy']);
	});

	/* GALERIAS NOVEDADES */
	Route::group(['prefix' => 'galerianovedad', 'as' => 'galerianovedad'], function() {
		Route::get('create', ['uses' => 'adm\GaleriaNovedadController@createGaleria', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\GaleriaNovedadController@storeGaleria', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\GaleriaNovedadController@showGaleria', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\GaleriaNovedadController@editGaleria', 'as' => '.edit']);
		Route::get('lists/{id}', ['uses' => 'adm\GaleriaNovedadController@listsGaleria', 'as' => '.lists']);
		Route::put('update/{id}', ['uses' => 'adm\GaleriaNovedadController@updateGaleria', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\GaleriaNovedadController@destroyGaleria', 'as' => '.destroy']);
	});
	
	/* CLIENTES */
	Route::group(['prefix' => 'clientes', 'as' => 'clientes'], function() {
		Route::get('create', ['uses' => 'adm\ClienteController@create', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ClienteController@store', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ClienteController@show', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\ClienteController@edit', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\ClienteController@update', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ClienteController@destroy', 'as' => '.destroy']);
	});

  /* TRABAJAMOS */
  Route::group(['prefix' => 'trabajamos', 'as' => 'trabajamos'], function() {
    Route::get('create', ['uses' => 'adm\TrabajamosController@create', 'as' => '.create']);
    Route::post('store', ['uses' => 'adm\TrabajamosController@store', 'as' => '.store']);
    Route::get('show', ['uses' => 'adm\TrabajamosController@show', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\TrabajamosController@edit', 'as' => '.edit']);
    Route::put('update/{id}', ['uses' => 'adm\TrabajamosController@update', 'as' => '.update']);
    Route::delete('destroy/{id}', ['uses' => 'adm\TrabajamosController@destroy', 'as' => '.destroy']);
  });

  /* BANNERS   CONTENIDO */
  Route::group(['prefix' => 'bannercontenidos', 'as' => 'bannercontenidos'], function() {
    Route::get('create', ['uses' => 'adm\BannerContenidoController@create', 'as' => '.create']);
    Route::post('store', ['uses' => 'adm\BannerContenidoController@store', 'as' => '.store']);
    Route::get('show', ['uses' => 'adm\BannerContenidoController@show', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\BannerContenidoController@edit', 'as' => '.edit']);
    Route::put('update/{id}', ['uses' => 'adm\BannerContenidoController@update', 'as' => '.update']);
    Route::delete('destroy/{id}', ['uses' => 'adm\BannerContenidoController@destroy', 'as' => '.destroy']);
  });

  /* BANNERS   ICONOS */
  Route::group(['prefix' => 'bannericonos', 'as' => 'bannericonos'], function() {
    Route::get('create', ['uses' => 'adm\BannerIconoController@create', 'as' => '.create']);
    Route::post('store', ['uses' => 'adm\BannerIconoController@store', 'as' => '.store']);
    Route::get('show', ['uses' => 'adm\BannerIconoController@show', 'as' => '.show']);
    Route::get('edit/{id}', ['uses' => 'adm\BannerIconoController@edit', 'as' => '.edit']);
    Route::put('update/{id}', ['uses' => 'adm\BannerIconoController@update', 'as' => '.update']);
    Route::delete('destroy/{id}', ['uses' => 'adm\BannerIconoController@destroy', 'as' => '.destroy']);
  });

  /* TIEMPOS */
	Route::group(['prefix' => 'tiempos', 'as' => 'tiempos'], function() {
		Route::get('create', ['uses' => 'adm\TiempoController@create', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\TiempoController@store', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\TiempoController@show', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\TiempoController@edit', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\TiempoController@update', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\TiempoController@destroy', 'as' => '.destroy']);
	});

  /* PUBLICACIONS DE EMPRESA */
	Route::group(['prefix' => 'publicacions', 'as' => 'publicacions'], function() {
		Route::get('create', ['uses' => 'adm\PublicacionController@create', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\PublicacionController@store', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\PublicacionController@show', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\PublicacionController@edit', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\PublicacionController@update', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\PublicacionController@destroy', 'as' => '.destroy']);
	});

	/* GALERIAS NOVEDADES */
	Route::group(['prefix' => 'galeriamodelo', 'as' => 'galeriamodelo'], function() {
		Route::get('create/{id}', ['uses' => 'adm\GaleriaModeloController@create', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\GaleriaModeloController@store', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\GaleriaModeloController@show', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\GaleriaModeloController@edit', 'as' => '.edit']);
		Route::get('lists/{id}', ['uses' => 'adm\GaleriaModeloController@lists', 'as' => '.lists']);
		Route::put('update/{id}', ['uses' => 'adm\GaleriaModeloController@update', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\GaleriaModeloController@destroy', 'as' => '.destroy']);
	});
/*////////////////////////////////*/
/*////////////////////////////////*/

	Route::group(['prefix' => 'equipamiento', 'as' => 'equipamiento'], function() {
		Route::group(['prefix' => 'contenido'], function() {
		Route::get('edit', ['uses' => 'adm\EquipamientoController@editarContenidos', 'as' => '.contenido.edit']);
		Route::put('update/{id}', ['uses' => 'adm\EquipamientoController@updateContenido', 'as' => '.contenido.update']);
		});	
	});



  Route::group(['prefix' => 'calidad', 'as' => 'calidad'], function() {
      Route::get('show', ['uses' => 'adm\CalidadController@showCalidad', 'as' => '.show']);
      Route::get('edit/{id}', ['uses' => 'adm\CalidadController@editCalidad', 'as' => '.edit']);
      Route::put('update/{id}', ['uses' => 'adm\CalidadController@updateCalidad', 'as' => '.update']);
    });

  Route::group(['prefix' => 'descarga', 'as' => 'descarga'], function() {
      Route::get('create', ['uses' => 'adm\DescargaController@createDescarga', 'as' => '.create']);
      Route::post('store', ['uses' => 'adm\DescargaController@storeDescarga', 'as' => '.store']);
      Route::get('show', ['uses' => 'adm\DescargaController@showDescarga', 'as' => '.show']);
      Route::get('edit/{id}', ['uses' => 'adm\DescargaController@editDescarga', 'as' => '.edit']);
      Route::put('update/{id}', ['uses' => 'adm\DescargaController@updateDescarga', 'as' => '.update']);
      Route::delete('destroy/{id}', ['uses' => 'adm\DescargaController@destroyDescarga', 'as' => '.destroy']);
    });


	Route::group(['prefix' => 'servicio', 'as' => 'servicio'], function() {
		Route::get('create', ['uses' => 'adm\ServicioController@createServicio', 'as' => '.create']);
		Route::post('store', ['uses' => 'adm\ServicioController@storeServicio', 'as' => '.store']);
		Route::get('show', ['uses' => 'adm\ServicioController@showServicio', 'as' => '.show']);
		Route::get('edit/{id}', ['uses' => 'adm\ServicioController@editServicio', 'as' => '.edit']);
		Route::put('update/{id}', ['uses' => 'adm\ServicioController@updateServicio', 'as' => '.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ServicioController@destroyServicio', 'as' => '.destroy']);
	});

	Route::group(['prefix' => 'novedad', 'as' => 'novedad'], function() {
			Route::get('create', ['uses' => 'adm\NovedadController@createNovedad', 'as' => '.create']);
			Route::post('store', ['uses' => 'adm\NovedadController@storeNovedad', 'as' => '.store']);
			Route::get('show', ['uses' => 'adm\NovedadController@showNovedad', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\NovedadController@editNovedad', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\NovedadController@updateNovedad', 'as' => '.update']);
			Route::delete('destroy/{id}', ['uses' => 'adm\NovedadController@destroyNovedad', 'as' => '.destroy']);
		});

	

	/* TEXTILES */
/*	Route::group(['prefix' => 'categoria', 'as' => 'categoria'], function() {
			Route::get('create', ['uses' => 'adm\CategoriaController@createCategoria', 'as' => '.create']);
			Route::post('store', ['uses' => 'adm\CategoriaController@storeCategoria', 'as' => '.store']);
			Route::get('show', ['uses' => 'adm\CategoriaController@showCategoria', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\CategoriaController@editCategoria', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\CategoriaController@updateCategoria', 'as' => '.update']);
			Route::delete('destroy/{id}', ['uses' => 'adm\CategoriaController@destroyCategoria', 'as' => '.destroy']);
		});

  	TEXTILES
	Route::group(['prefix' => 'producto', 'as' => 'producto'], function() {
			Route::get('create', ['uses' => 'adm\ProductoController@createProducto', 'as' => '.create']);
			Route::post('store', ['uses' => 'adm\ProductoController@storeProducto', 'as' => '.store']);
			Route::get('show', ['uses' => 'adm\ProductoController@showProducto', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editProducto', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\ProductoController@updateProducto', 'as' => '.update']);
			Route::delete('destroy/{id}', ['uses' => 'adm\ProductoController@destroyProducto', 'as' => '.destroy']);
		});
*/
	/* ADHESIVOS */

/*
	Route::group(['prefix' => 'acategoria', 'as' => 'acategoria'], function() {
			Route::get('create', ['uses' => 'adm\ACategoriaController@createACategoria', 'as' => '.create']);
			Route::post('store', ['uses' => 'adm\ACategoriaController@storeACategoria', 'as' => '.store']);
			Route::get('show', ['uses' => 'adm\ACategoriaController@showACategoria', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ACategoriaController@editACategoria', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\ACategoriaController@updateACategoria', 'as' => '.update']);
			Route::delete('destroy/{id}', ['uses' => 'adm\ACategoriaController@destroyACategoria', 'as' => '.destroy']);
		});

	Route::group(['prefix' => 'aproducto', 'as' => 'aproducto'], function() {
			Route::get('create', ['uses' => 'adm\AProductoController@createAProducto', 'as' => '.create']);
			Route::post('store', ['uses' => 'adm\AProductoController@storeAProducto', 'as' => '.store']);
			Route::get('show', ['uses' => 'adm\AProductoController@showAProducto', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\AProductoController@editAProducto', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\AProductoController@updateAProducto', 'as' => '.update']);
			Route::delete('destroy/{id}', ['uses' => 'adm\AProductoController@destroyAProducto', 'as' => '.destroy']);
		});
*/	

	
  /* CORREOS */
  Route::group(['prefix' => 'correo', 'as' => 'correo'], function() {
      Route::get('create', ['uses' => 'adm\CorreoController@createCorreo', 'as' => '.create']);
      Route::post('store', ['uses' => 'adm\CorreoController@storeCorreo', 'as' => '.store']);
      Route::get('show', ['uses' => 'adm\CorreoController@showCorreo', 'as' => '.show']);
      Route::get('edit/{id}', ['uses' => 'adm\CorreoController@editCorreo', 'as' => '.edit']);
      Route::put('update/{id}', ['uses' => 'adm\CorreoController@updateCorreo', 'as' => '.update']);
      Route::delete('destroy/{id}', ['uses' => 'adm\CorreoController@destroyCorreo', 'as' => '.destroy']);
    });

  /* SOLUCIONES A MEDIDA */
  Route::group(['prefix' => 'solucion', 'as' => 'solucion'], function() {
      /*
      Route::get('create', ['uses' => 'adm\SolucionController@createSolucion', 'as' => '.create']);
      Route::post('store', ['uses' => 'adm\SolucionController@storeSolucion', 'as' => '.store']);
      */
      Route::get('show', ['uses' => 'adm\SolucionController@showSolucion', 'as' => '.show']);
      Route::get('edit/{id}', ['uses' => 'adm\SolucionController@editSolucion', 'as' => '.edit']);
      Route::put('update/{id}', ['uses' => 'adm\SolucionController@updateSolucion', 'as' => '.update']);
    });

/*	Route::group(['prefix' => 'galeria', 'as' => 'galeria'], function() {
			Route::get('create', ['uses' => 'adm\GaleriaController@createGaleria', 'as' => '.create']);
			Route::post('store', ['uses' => 'adm\GaleriaController@storeGaleria', 'as' => '.store']);
			Route::get('show', ['uses' => 'adm\GaleriaController@showGaleria', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\GaleriaController@editGaleria', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\GaleriaController@updateGaleria', 'as' => '.update']);
			Route::delete('destroy/{id}', ['uses' => 'adm\GaleriaController@destroyGaleria', 'as' => '.destroy']);
		});*/

	Route::group(['prefix' => 'clientex', 'as' => 'clientex'], function() {
		Route::group(['prefix' => 'contenido'], function() {
		Route::get('show', ['uses' => 'adm\ClienteController@showCliente', 'as' => '.contenido.show']);
		Route::put('update/{id}', ['uses' => 'adm\ClienteController@updateCliente', 'as' => '.contenido.update']);
		Route::delete('destroy/{id}', ['uses' => 'adm\ClienteController@destroyCliente', 'as' => '.destroy']);
		});	
	});

});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
