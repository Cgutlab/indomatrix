<!DOCTYPE html>

<html lang="es">

<head>

  

  <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">

  <title>Indomatrix::</title>

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

<div class="container" style="width: 80%;">

<div class="row">

<div class="col l6 m12">

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1638.4323407553866!2d-58.25864192745609!3d-34.78418173375918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a3294a760eb50b%3A0xba443ea7d65eee4a!2sINDOMATRIX+S.A.!5e0!3m2!1ses!2sar!4v1530040297981" width="99%" style="border:1px solid #EEEEEE; border-top: none;" height="440" frameborder="0" style="border:0" allowfullscreen></iframe>	

</div>

<div class="col l6 m12">	

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3283.50785394517!2d-58.364464884693646!3d-34.616604380456224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95a334d0cb699a29%3A0x98a57b48cbedc8ef!2sJuana+Manso+1633%2C+Buenos+Aires!5e0!3m2!1ses!2sar!4v1530040927992" width="99%" style="border:1px solid #EEEEEE; border-top: none;" height="440" frameborder="0" style="border:0" allowfullscreen></iframe>

</div>

</div>

</div>



{!!Form::open(['route'=>'contacto.enviar', 'method'=>'POST'])!!}

<div class="container" style="width: 80%;">


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


<div class="tituloRojo Lato fs36 yp35">

Contacto



</div>







<div class="row">

	<div class="input-field col m6 s12">

	{!!Form::text('nombre',null,['class'=>'validate', 'placeholder'=>'Nombre', 'required'])!!}

	<label for="nombre"></label>

	</div>

	<div class="input-field col m6 s12">

	{!!Form::text('telefono',null,['class'=>'validate', 'placeholder'=>'Teléfono', 'required'])!!}

	<label for="telefono"></label>

	</div>

</div>

<div class="row">

	<div class="input-field col m6 s12">

	{!!Form::text('empresa',null,['class'=>'validate', 'placeholder'=>'Empresa', 'required'])!!}

	<label for="empresa"></label>

	</div>

	<div class="input-field col m6 s12">

	{!!Form::email('email',null,['class'=>'validate', 'placeholder'=>'E-mail', 'required'])!!}

	<label for="email"></label>

	</div>

</div>

<div class="row">

	<div class="input-field col m6 s12" style="margin-top: 47px;">

	<label for="mensaje"></label>

	{!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea', 'placeholder'=>'Mensaje', 'required'])!!}

	</div>

	<div class="input-field col m6 s12" style="padding-top:0px; margin-bottom: 20px;">	

	<div class="g-recaptcha" data-sitekey = "{{env('GOOGLE_RECAPTCHA_SITE_KEY')}}"></div>

	<div class="fs15 gris15" style="font-family: 'Source Sans Pro';">Acepto los términos y condiciones de privacidad</div>

	</div> 

</div>

<div class="row" style="padding-bottom: 50px;">

	<div align="center">                      

	<div class="col m12">

	<button class="btn waves-effect waves-light z-depth-0" type="submit" name="action" style="background-color: #DE2007; padding: 0px 50px 5px 50px; color: white;">Enviar

	</button>

	</div>

	</div>

</div>

</div>

{!!Form::close()!!}





@include('page.template.footer')



<script src='https://www.google.com/recaptcha/api.js?hl=es'></script>  

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
