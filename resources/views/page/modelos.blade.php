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
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,600,700" rel="stylesheet">

  <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">
  <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

</head>
<body>
@include('page.template.header')


<div class="container cero yp35" style="width: 82%;">

@if ($errors->any())
<div class="card-panel alert-error">
  <ul><li class="tituloRojo fs20">ALERTA:
    @foreach ($errors->all() as $error)
     {{ $error }}
    @endforeach
    </li>
  </ul>
</div>
@endif

<div class="tituloRojo Lato fs36">
{{$modeloscontenidos->titulo}}
<div class="pemLinearojiz1"></div>
</div>
</div>

<div class="container cero yp35" style="width: 82%;">
<div class="Lato fs16 editorRico gris8" style="width: 75%;">
{!!$modeloscontenidos->texto!!}
</div>
</div>

<div class="yp35">
<div class="container cero yp35" style="width: 84%;">
<div class="row">
@foreach($modelosgalerias as $modelosgaleria)
<div class="col m12 l4" style="position: relative;">
  <div class="card z-depth-0">
    <div class="card-image center-align">
    <a href="#modal{{$modelosgaleria->id}}" class="naranja fs20 mayus modal-trigger">
        <div class="efecto">
            <span class="central Lato fs14"><i class="material-icons">add</i>Ingresar</span>
        </div>
        <img src="{{asset('imagenes/modelogaleria/'.$modelosgaleria->imagen)}}" style="border: 1px solid #DDD; max-width: 100%; height: 250px;">
    </a>
    </div>  
    <div class="card-content cero" style="border: 1px solid #E4E4E4; padding: 0; height: 75px;">
      <div class="Lato fw6 fs15 gris9 editorRico center-align" style="margin: 10px;">{!!($modelosgaleria->titulo)!!}</div>
{{--       <div class="Lato fw4 fs17 gris12 editorRico yp10">{!!($modelosgaleria->texto)!!}</div> --}}
    </div>
  </div>
</div>
@endforeach
</div>
</div>
</div>

@foreach($modelosgalerias as $modelosgaleria)
<div class="center-align">
  <!-- Galeria Structure -->
  <div id="modal{{$modelosgaleria->id}}" class="modal" style="width: 70%;">
    <div class="modal-content">
      <div class="Lato fw6 fs15 gris9 editorRico center-align" style="margin: 10px;">{!!($modelosgaleria->titulo)!!}</div>
  
  <div class="row">      
  @foreach($galeriasmodelos as $galeriasmodelo)
    @if($modelosgaleria->id == $galeriasmodelo->id_productos_modelos)
    <div class="col l6 m12 center-align">
      <img src="{{asset('imagenes/galeriamodelo/'.$galeriasmodelo->imagen)}}" style="width: 400px; height: 380px;">
      <div>{{$galeriasmodelo->titulo}}</div>  
    </div>
    @endif
  @endforeach
  </div>

    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-close btn-flat" style="border: 1px solid gray;">Cerrar</a>
    </div>
  </div>
</div>
@endforeach



<div style="background: #F5F5F5;">

<div class="container" style="width: 80%;" align="center">

  <div class="Roboto fw5 tituloRojo fs24 cero ym60 yp35">

    ¿Necesitas Asesoramiento?

  </div>

  <div class="Roboto fw5 gris15 fs18 cero yp35">

    Contáctanos y te brindaremos toda la información que necesites

  </div>

</div>



{!!Form::open(['route'=>'contacto.enviar', 'method'=>'POST'])!!}

<div class="container" style="width: 45%;">

<div class="row">
<div class="col l12 s12">
  <label for="nombre"></label>
  {!!Form::text('nombre',null,['class'=>'validate', 'placeholder'=>'Nombre', 'required'])!!}
</div>
</div>

{{--  
<div class="row">
<div class="col l12 s12">
  <label for="apellido"></label>
  {!!Form::text('apellido',null,['class'=>'validate', 'placeholder'=>'Apellido', 'required'])!!}
</div>
</div>
 --}}

<div class="row">
  <div class="col l12 s12">
  <label for="email"></label>
  {!!Form::email('email',null,['class'=>'validate', 'placeholder'=>'E-mail', 'required'])!!}
  </div>
</div>

<div class="row">
  <div class="col l12 s12">
  <label for="empresa"></label>
  {!!Form::text('empresa',null,['class'=>'validate', 'placeholder'=>'Empresa', 'required'])!!}
  </div>
</div>

<div class="row">
<div class="input-field col l12 s12" style="margin-top: 47px;">
  <label for="mensaje"></label>
  {!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea', 'placeholder'=>'Mensaje', 'required'])!!}
  </div>
</div>

<div class="row">
  <div class="input-field col l7 s12" required>  
  <div class="g-recaptcha" data-sitekey = "{{env('GOOGLE_RECAPTCHA_SITE_KEY')}}"></div>
  </div> 
  <div class="col l5 s12">
  <label>
    <input type="checkbox" required/>
    <span class="fs14 gris15" style="font-family: 'Source Sans Pro';">Acepto los términos y condiciones de privacidad</span>
  </label>
  </div>
</div>

<div class="row" style="padding-bottom: 50px;">
  <div align="center">                      
  <div class="col m12 s12">
  <button class="btn waves-light z-depth-0" type="submit" name="action" style="background-color: #DE1F06; padding: 0px 50px 5px 50px; color: white;">Enviar
  </button>
  </div>
  </div>
</div>
</div>

{!!Form::close()!!}

</div>








@include('page.template.footer')

<script src='https://www.google.com/recaptcha/api.js?hl=es'></script>  
	<script type="text/javascript" src="{{ asset('js/jquery/jquery.js')}}"></script>
    <script type="text/javascript" src="{{ asset('js/jquery/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>
    <script type="text/javascript">

	  $(document).ready(function(){
        $('.slider').slider();

    });
      
    </script>
</body>
</html>
<script type="text/javascript" src="{{ asset('js/jquery/jquery.js')}}"></script>
    <script type="text/javascript" src="{{ asset('js/jquery/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>

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
<script type="text/javascript">
   $(document).ready(function(){
    $('.modal').modal();
  });
</script>
<script type="text/javascript">
    $(document).ready(function(){
    $('.materialboxed').materialbox();
  });
</script>