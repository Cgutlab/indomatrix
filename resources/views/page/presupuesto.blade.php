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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">


    <!--Import Google Icon Font-->

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,600,700" rel="stylesheet">



  <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

  <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">



</head>

<body>

@include('page.template.header')







<div align="center">
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

</div>

{!!Form::open(['route'=>'presupuesto.enviar', 'method'=>'POST', 'files' => true])!!}

<div class="container" style="margin-bottom: 100px;">

    <div class="row" style="margin-top: 100px;">

        <div id="estado1" >

            <div class="col l12">

                <div align="center">

                    <img style="align-items: center;" src="{{asset('imagenes/help/presupuesto1.jpg')}}">

                    <div class="col l7">

                        <span class="fs20 cv20">

                        <b>TUS DATOS</b>

                        </span>

                    </div>

                    <div class="col l3">

                        <span class="fs20">

                        TU OBRA

                        </span>

                    </div>

                </div>

                <br><br>

                <div class="row">

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="nombre" name="nombre"  class="validate">

                        <label for="nombre">Nombre</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="localidad" name="localidad"  class="validate">

                        <label for="localidad">Localidad</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="email" name="email"  class="validate">

                        <label for="email">Email</label>

                    </div>

                    <div class="input-field col l5 push-l1">

                        <input type="text" id="telefono" name="telefono"  class="validate">

                        <label for="telefono">Teléfono</label>

                    </div>

                    <div class="input-field col l3 pull-l1 right">

                        <a type="submit" id="botonSiguienteEstado" class="btn right z-depth-0" style="margin-top: 20px; background-color:#DE2007; color:white; font-weight: bold;">Siguiente</a>

                    </div>

                </div>

            </div>

        </div>



        <div id="estado2" style="display: none;">

        <div class="col l12">

            <div align="center">

                <img style="align-items: center;" src="{{asset('imagenes/help/presupuesto2.jpg')}}">

                <div class="col l7">

                    <span class="fs20">

                    TUS DATOS

                    </span>

                </div>

                <div class="col l3">

                    <span class="fs20 cv20">

                    <b>TU OBRA</b>

                    </span>

                </div>

            </div>

            <div class="row">

                <div class="input-field col l5 push-l1">

                    <textarea id="mensaje" name="mensaje"  class="materialize-textarea validate"></textarea>

                    <label for="mensaje">Mensaje</label>

                    <div class="input-field col m12 s12" style="padding-top:0px; margin-bottom: 20px;">  

                    <div class="g-recaptcha" data-sitekey = "{{env('GOOGLE_RECAPTCHA_SITE_KEY')}}"></div>

                    <div class="fs15 gris15" style="font-family: 'Source Sans Pro';">Acepto los términos y condiciones de privacidad</div>

                    </div>

                </div>

                <div align="right">

                  <div class="file-field col l5 push-l1">

                    <div class="btn" style="background: #DE2007;">

                      <span>Examinar</span>

                      <input type="file" id="imagen" name="imagen">

                    </div>

                    <div class="file-path-wrapper">

                      <input class="file-path validate" type="text" file">

                    </div>

                  </div>

                </div>

                <div class="input-field col l3 pull-l1 right">

                    <a type="submit" id="botonEstadoAnterior" class="btn center z-depth-0" style="margin-top: 20px; background-color:white; border:1px solid #DE2007; color:black;">Anterior</a>

                    <button type="submit" id="botonSiguienteAnterior" class="btn right z-depth-0" style="margin-top: 20px; background-color:#DE2007; color:white; font-weight: bold;">Enviar</button>

                </div>

            </div>

        </div>

        </div>

    </div>

</div>





<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/jquery.min.js"></script>

<script type="text/javascript" src="js/materialize.min.js"></script>

<script>



    document.getElementById("botonSiguienteEstado").addEventListener("click", mostrarEstado2);

    document.getElementById("botonEstadoAnterior").addEventListener("click", mostrarEstado1);



    function mostrarEstado2() {

        document.getElementById("estado1").className = "animated bounceOutLeft";

        setTimeout(function(){ 

            document.getElementById("estado1").style.display = "none"; 

            document.getElementById("estado2").style.display = "block";

            document.getElementById("estado2").className = "animated bounceInRight";

            

            document.getElementById("elDiv1").className = "paso datos col m2 col l2 offset-m1";

            document.getElementById("elDiv2").className = "paso obra active col m4 col l4 push-l3";

        }, 1);



    }

    

    function mostrarEstado1() {

        document.getElementById("estado2").className = "animated bounceOutLeft";

        

        setTimeout(function(){ 

            document.getElementById("estado2").style.display = "none"; 

            document.getElementById("estado1").style.display = "block";

            document.getElementById("estado1").className = "animated bounceInRight";

            

            document.getElementById("elDiv1").className = "paso datos active col m2 col l2 offset-m1";

            document.getElementById("elDiv2").className = "paso obra col l2 col m4 col l4 push-l3";

        }, 1);

    }

    

    function animacion(id, clase) {

        $(id).removeClass("animated "+clase).addClass(clase + ' animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){

          $(this).removeClass("animated "+clase);

        });

    };



</script>







@include('page.template.footer')

</body>

</html>
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
