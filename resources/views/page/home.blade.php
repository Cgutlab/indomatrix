<!DOCTYPE html>

<html lang="es">

<head>



	<meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">

	<title>Indomatrix</title>

	<link href="{{ asset('css/estilos.css') }}" rel="stylesheet">

    <!-- Bootstrap Core CSS -->

    <link href="{{ asset('css/materialize/materialize.min.css') }}" rel="stylesheet">



    <!--Import Google Icon Font-->

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,500,600,700" rel="stylesheet">



<!-- Compiled and minified CSS -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">



  <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

  <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">



</head>

<body>

@include('page.template.header')



{{-- Slider --}}

<div class="slider hide-on-med-and-down">

    <ul class="slides">

        @foreach($sliders as $slider)

            <li>

                <img src="{{ asset('imagenes/sliders/'.$slider->imagen) }}" style="filter:brightness(1);">               

                <div class="caption" style="background: rgba(58,58,59,0.7); left:15%; width: auto; border-top: 35px;">

                    <div style="margin: 25px;">                      

                      <span class="editorRico blanc1 fw3 Lato" style="font-size: 35px; line-height: 42px;">{!!$slider->titulo!!}</span>

                      <div align="">

                      <div class="fulLinearojiz1" style="margin-bottom: 25px;"></div>                      

                      </div>

                    </div>

                </div>     

            </li>

        @endforeach

    </ul>

</div>



<div class="container" style="width: 88%">

<div class="tituloRojo Lato fs36" style="margin-bottom: 0px;">

Líneas de Productos

<div class="peqLinearojiz1"></div>

</div>

</div>



{{-- Destacados --}}

<div class="container" style="width: 90%; padding: 50px 0 50px 0;">

<div class="row">

@foreach($destacados as $destacado)

<div class="col m12 l3" style="position: relative;">

  <div class="card z-depth-0">

    <div class="card-image center-align">

    <a href="{{($destacado->ruta)}}" class="naranja fs20 mayus">

        <div class="efecto">

            <span class="central Lato fs14"><i class="material-icons">add</i>Ingresar</span>

        </div>

        <img src="{{('imagenes/destacados/'.$destacado->imagen)}}" style="border: 1px solid #DDD; width: 100%; height: 100%;">

    </a>

    </div>

    <div class="card-content cero" style="border: 1px solid #E4E4E4; padding: 0;">

      <div class="Lato fw6 fs15 gris9 editorRico center-align" style="margin: 10px;">{!!($destacado->titulo)!!}</div>

{{--       <div class="Lato fw4 fs17 gris12 editorRico yp10">{!!($destacado->texto)!!}</div> --}}

    </div>

  </div>

</div>

@endforeach

</div>

</div>



<div class="container" style="width: 88%">

<div class="tituloRojo Lato fs36" style="margin-bottom: 0px;">

C&oacute;mo Trabajamos

<div class="peqLinearojiz1"></div>

</div>

</div>



{{-- TRABAJAMOS --}}

<div class="container" style="width: 90%; padding: 30px 0 0px 0;">

<div class="row">

@foreach($trabajamos as $trabajamo)

  <div class="col m6 l3" style="position: relative;">

    <div class="card white z-depth-0 ">

        <div class="row">

        <div class="col l2">

          <img src="{{('imagenes/trabajamos/'.$trabajamo->imagen)}}">

        </div>

        <div class="col l10">

          <div class="Lato fw7 fs18 gris9" style="padding-left: 8px;">{{($trabajamo->titulo)}}</div>

          <div class="Lato fw5 fs18 rojiz1" style="padding-left: 8px;">{{($trabajamo->subtitulo)}}</div>

        </div>

        </div>

        <div class="Lato fw5 fs16 gris9" style="height: 150px; max-width: 80%;">

        {!!($trabajamo->texto)!!}          

        </div>

      </div>

  </div>

@endforeach

</div>

</div>





{{-- BANNER --}}

<div class="slider hide-on-med-and-down">

<ul class="slides">

@foreach($banners as $banner)        

<li>

    <img src="{{ asset('imagenes/bannercontenidos/bannercontenidos__bannerHome.jpg') }}" style="filter:brightness(1);">               

    <div class="caption" style="left: 7%; background: rgba(58,58,59,0); width: 88%; border-top: 35px;">

        <div class="row">

          <div class="col l4">

            <span class="editorRico blanc1 fw3 Lato" style="font-size: 38px;">{!!$banner->titulo!!}</span>

            <span class="editorRico blanc1 fw3 Source" style="font-size: 16px;">{!!$banner->texto!!}</span>  

          </div>

          <div class="offset-l1 col l7">

          <div class="row">

          @foreach($bannersIconos as $bannersicon)



          <div class="col l6" style="margin-top: 3%;">

          <div class="row">

          <div class="col l4">

            <img src="{{ asset('imagenes/bannericonos/'.$bannersicon->imagen) }}" style="filter:brightness(1); width: 85px; height: 85px;">

          </div>

          <div class="col l8">

            <span class="fs25">{!!($bannersicon->titulo)!!} </span>

          </div>

          </div>

          </div>



          @endforeach

          </div>

          </div>

        </div>

    </div>  

</li>

@endforeach

</ul>

</div>





<div class="container center-align" style="width: 88%">

<div class="tituloRojo Lato fs36" style="margin-bottom: 0px;">

Producto Llave en Mano

<div align="center">

<div class="peqLinearojiz2"></div>

</div>

</div>

</div>





{{-- Contenido --}}

<div class="container" style="padding-bottom: 35px;">

<div class="row">

@foreach($contenidos as $contenido)

  <div class="col l12 editorRico">

    <div class="row fs20 fw4 Lato gris9">

    {!!$contenido->subtitulo!!}

    </div>

    <div class="row fs18 fw3 Lato gris9">

    {!!$contenido->texto!!}

    </div>

  </div>

  <div align="center">

  <a href="{{$contenido->ruta}}" style="background: #DE2007; border-radius: 3px; padding: 12px 30px 12px 30px; color: white;">Más Información</a>    

  </div>

@endforeach

</div>

</div>









@include('page.template.footer')



</body>

</html>



<!-- Compiled and minified JavaScript -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>



    <script type="text/javascript" src="{{ asset('js/jquery/jquery.js')}}"></script>

    <script type="text/javascript" src="{{ asset('js/jquery/jquery.min.js')}}"></script>

    <script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>



<script>

  $(document).ready(function(){

  $('.slider').slider();

  });

</script>



<script type="text/javascript">

 $(document).ready(function(){

  $('.dropdown-trigger').dropdown({

    constrainWidth: false,

    closeOnClick: false,

    fullWidth: false,

    hover: 1,

  });

   });

</script>

<script type="text/javascript">

  $(document).ready(function(){

    $('.sidenav').sidenav();

  });

</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-69332128-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-69332128-1');
</script>
