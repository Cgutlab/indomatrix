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

<div class="hide-on-med-and-down cero" style="background: #EBEBEB; border-bottom: 1px solid #DDDDDD;">

  <div class="container cero" style="width: 82%;">  

    <div class="row cero">

      <div class="gris14 fw5 fs17 cero" style="padding: 25px 0 5px 10px;">

      <a href="{{route('textiles')}}" class="Roboto gris14">

      Textil

      </a>

       | 

      @foreach($categorias as $categoria)

      @if($categoria->id == $category->id)

      <a href="{{route('textil', $categoria->id)}}" class="Roboto gris14">

      {{($categoria->titulo)}}

      </a> 

       | 

      @if($producto->id_categoria == $category->id)

      <a href="{{route('productot', $producto->id)}}" class="Roboto gris14">

      {{strtoupper($producto->titulo)}}

      </a> 

      @endif

      @endif

      @endforeach

      </div>

    </div>  

  </div>

</div>





<div class="yp35">

<div class="container" style="width: 82%;">

<div class="row cero">

  <div class="col l3 m12">



  <div style="width: 80%;">

    @foreach($categorias as $categoria)

    @if($categoria->id == $category->id)

    <div class="row">

      <a href="{{route('textil', $categoria->id)}}">

      <div class="col l12 m6">

        <div class="sublineaNaranja orang1 fs15 fw7 Roboto">

            {{strtoupper($categoria->titulo)}}

          <aside class="right">

            <img src="{{asset('imagenes/help/arrowDown.png')}}">  

          </aside>

        </div>

      </div>

      </a>       

    </div>

    <div class="row">

      <div class="col l12 m6">



      @foreach($productos as $producto)

      @if($producto->id_categoria == $category->id)

        <a href="{{route('productot', $producto->id)}}">



        @if($producto->id == $productoI->id)

        <div class="orang1 fs14 fw6 Roboto">

        @else

        <div class="gris12 fs14 fw5 Roboto">

        @endif



        &nbsp;&nbsp;{{($producto->titulo)}}   



        </div>

        </a>

      @endif

      @endforeach



      </div>

    </div>

    @else

    <div class="row">

      <a href="{{route('textil', $categoria->id)}}">

      <div class="col l12 m6">

        <div class="sublineaNaranja gris14 fw7 Roboto">

            {{strtoupper($categoria->titulo)}}

          <aside class="right">

            <img src="{{asset('imagenes/help/arrowEste.png')}}">        

          </aside>

        </div>

      </div>

      </a>       

    </div>

    @endif

    @endforeach

  </div>

  </div>

  <div class="col l9">

  <div class="verde1 fs36 xm5 Roboto fw3">{!!strtoupper($productoI->titulo)!!}</div>

   

  <div class="fullineaVerde"></div>

   <div class="xm5 yp20" style="padding-bottom: 50px;">

     <div class="DosColumnas editorRico Roboto fs16 yp35">

     {!!($productoI->texto1)!!}  

     </div>

     <div>

    @if($productoI->pdf != '')

    <a href="{{asset('imagenes/textil_productos/pdf/'.$productoI->pdf)}}" class="btn btn-ficha z-depth-0" target="_blank" style="background: #F68121;

    padding-left: 15px; padding-right: 15px; font-weight: 600;">Descargar Ficha T&eacute;cnica</a>

    @endif

     </div>

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
