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

<div class="hide-on-med-and-down cero" style="background: #EBEBEB;">

  <div class="container cero" style="width: 80%;">  

    <div class="row cero">

      <div class="Roboto verde1 fw7 fs20 cero" style="padding: 20px 0 20px 10px;">TEXTIL</div>

    </div>  

  </div>

</div>



{{-- Categorias --}}

<div class="container" style="width: 83%; padding: 70px 0 70px 0;">

<div class="row">

@foreach($categorias as $categoria)

<div class="col s12 m6 l3">

  <div class="card z-depth-0">

    <div class="card-image center-align">

    <a href="{{route('textil', $categoria->id)}}">

        <div class="efecto">

            <span class="central"><i class="material-icons">add</i></span>

        </div>

        <img src="{{('imagenes/textil_categorias/'.$categoria->imagen)}}" style="border: 1px solid #DDD; width: 100%; height: 100%;">

    </a>

    </div>

    <div class="card-content cero center-align Roboto" style="border: 1px solid #DDD; background: #DDD;">

      <div class="Roboto fw5 fs16 gris13 editorRico Roboto">{!!($categoria->titulo)!!}</div>

    </div>

  </div>

</div>

@endforeach

</div>

</div>



@include('page.template.footer')



</body>

</html>



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
