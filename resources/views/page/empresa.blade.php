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





{{-- CONTENIDO --}}

<div class="container ym60 yp35" style="width: 90%; margin-bottom: 80px;">

<div class="row Lato">

  <div class="col l4">

  <div class="hide-on-med-and-down">

    @if($empresa->imagen != null)

    <img class="responsive-img" src="{{asset('imagenes/empresa/'.$empresa->imagen)}}" style="max-height:100%; max-width: 100%;">

    @endif

  </div>

  </div>

  <div class="col l8">

  <div  style="width: 98%;">

  <div class="container" style="width: 100%">

    <div class="tituloRojo Lato fs36 editorRico" style="margin-bottom: 0px;">

      {!!$empresa->titulo!!}

    <div class="pemLinearojiz1"></div>

    </div>

  </div>  

  <div class="negro3 Lato fw6 fs18" style="margin-top: 30px;">{!!$empresa->titulo2!!}</div>

  <div class="gris17 editorRico fw3 fs16 Lato gris12 Lato DosColumnas">

    {!!$empresa->texto!!}

  </div>

  </div>

  </div>

</div>

</div>



{{-- Linea de Tiempo --}}

<section class="timeline-section" style="padding-top: 50px; padding-bottom: 10px;">

    <div id="timeline">

      <ul id="dates">

        @foreach($tiempos as $tiempo)

          <li><a href="#{{ $tiempo->titulo }}">{{ $tiempo->titulo }}</a></li>

        @endforeach

      </ul>

      

      <ul id="issues">

        @foreach($tiempos as $tiempo)

        <li id="{{ $tiempo->titulo }}">

          <div class="imglinea" align="center"><br>

          

        @if($tiempo->imagen!=null)

          <div align="center" style="margin-left: 315px;">            
          
          <img src="{{asset('imagenes/tiempos/'.$tiempo->imagen)}}" class="img-responsive" width="276px" style="max-height: 180px;">

          </div>
        @else
          <div class="Lato blanc1 editorRico" style="width: 700px; letter-spacing: 0.3px;">{!!$tiempo->texto!!}</div><br>
        @endif          

          </div>

        </li>

        @endforeach

      </ul>

          

    </div>

</section>



<div style="border-bottom: 1px solid #DDDDDD;">

<div class="container yp35" style="width: 88%; margin-bottom: 35px; ">

<div class="row">

@foreach($publicacions as $publicacion)

  <div class="col l6 editorRico">

  <div class="tituloRojo Lato fs36 fw3" style="margin-bottom: 0px;">

  {!!($publicacion->titulo)!!}

  <div class="peqLinearojiz2"></div>

  </div>

  <div class="gris10 fs16 Lato yp20 editorRico" style="width: 90%;">

  {!!($publicacion->texto)!!}

  </div>

  </div>

@endforeach

</div>

</div>

</div>



<div>

<div class="container" style="width: 88%; margin-bottom: 35px;">

<div class="row">

<div class="col l6">

  <div class="tituloRojo Lato fs36 fw3" style="margin-bottom: 0px;">

  {!!$empresa->politica!!} 

  </div>

  <div class="gris10 fs16 Lato" style="width: 90%;">

  {!!$empresa->descripcion!!} 

  </div>

</div>

<div class="col l6">

  <img class="yp35" src="{{asset('imagenes/empresa/'.$empresa->imagen2)}}" class="img-responsive">

</div>

</div>

</div>

</div>











</div>



@include('page.template.footer')





</body>

</html>



<script type="text/javascript" src="{{ asset('js/jquery/jquery.js')}}"></script>

<script type="text/javascript" src="{{ asset('js/jquery/jquery.min.js')}}"></script>

<script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>

<script type="text/javascript">

$(document).ready(function(){

    $('.slider').slider();



});

</script>

<script type="text/javascript">

  $(document).ready(function(){

    $('.sidenav').sidenav();

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

<script type="text/javascript" src="http://osolelaravel.com/verion/js/jquery.timelinr-0.9.6.js"></script>

 

 <script>

    $(function(){

        $().timelinr({

            arrowKeys: 'true'

        })

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
