<div class="hide-on-med-and-down Lato" style="width: 100%; background: #F3F3F3;">

  <div class="container cero Lato" style="width: 84%;" align="right">   

<!-- 

      @foreach($redes as $rede)

        <a href="{{($rede->ruta)}}">

          <img class="responsive-img iconos" src="{{asset('imagenes/redes/'.$rede->imagen)}}">

        </a>

        <span class="Lato rojiz1 fs16 fw6" style="vertical-align: middle;margin-right: 20px;">{{$rede->nombre}}</span>

      @endforeach

 -->

      <div class="btn z-depth-0" style="background-color: #545456; border-right: 1px solid #777777; border-radius: inherit; padding: 5px 10px 10px 10px; margin-left: -1px;margin-right: -1px;"><img src="{{asset('imagenes/help/buscador.png')}}"></div>   

<style type="text/css">
  .navbarActive{
    background: #DE2007!important;
  }
  .navbarInvert{
    background: #545456!important;
  }
</style>

      <a href="{{route('presupuesto')}}"><div class="btn z-depth-0 fw3 @if($active == 'presupuesto') navbarActive @endif" style="background-color: #545456; border-right: 1px solid #777777; border-radius: inherit; padding: 2px 10px 5px 10px; margin-left: -2px;margin-right: -1px; letter-spacing: 0px;">SOLICITUD DE PRESUPUESTO</div></a>

      <a href="{{route('novedades')}}"><div class="btn z-depth-0 fw3 @if($active == 'novedades') navbarActive @endif" style="background-color: #545456; border-right: 1px solid #777777; border-radius: inherit; padding: 2px 10px 5px 10px; margin-left: -2px;margin-right: -1px; letter-spacing: 0px;">NOVEDADES</div>

      <a href="{{route('contacto')}}"><div class="btn z-depth-0 fw3 @if($active == 'contacto') navbarInvert @endif" style="background-color: #DE2007; border-right: 1px solid #777777; border-radius: inherit; padding: 2px 10px 5px 10px; margin-left: -2px;margin-right: -1px; letter-spacing: 0px;"><img src="{{asset('imagenes/help/correoh.png')}}" style="margin-right:5px;">CONTACTO</div>   

  </div>

</div>



<nav class="header z-depth-0" style="border-top: 2px solid #FF290B; height: 132px; padding: 0;">

<div class="nav-wrapper Lato gris11" style="border-bottom: 1px solid #DDDDDD; padding: 0;">

<div class="container" style="width: 100%;">

  <div class="row">

      <a href="#" data-target="mobile-demo" class="sidenav-trigger right" style="margin: 40px 0 50px 0px; padding: 0 10px 0 10px; border: 1px solid #DDDDDD"><i class="material-icons">menu</i></a>

  <div class="col l3">

    <div class="row">

      

      

      <a href="{{route('index')}}">

        <img class="left responsive-img hide-on-small-only" style="max-height: 105px; margin: 1px; margin-top: 32px;" src="{{asset('imagenes/logos/'.$header->imagen)}}">

        <img class="hide-on-med-and-up show-on-small" style="position: absolute; max-height: 120px; margin: 1px; margin-top: 32px;" src="{{asset('imagenes/logos/'.$header->imagen)}}">

      </a>



    </div>  

  </div>

  <div class="col l8 hide-on-med-and-down">

    <div class="row fw5" align="right">

      <div class="col l2" style="margin-top: 39px;">

        <a href="{{route('empresax')}}" style="color: inherit;">

        @if($active == 'empresa')

        <span class="lheader_active center fw6">EMPRESA</span>

        @else

        <span class="lheader center fw6">EMPRESA</span>

        @endif

        </a>

      </div>



      <div class="col l2" style="margin-top: 32px;">  

        <a href="{{url('modelos/1')}}" style="color: inherit;">

        <div class="container" style="width: 100%; padding-left: 0px;"> {{--  --}}

        @if($active == 'modelos/1')

        <span class="lheader_active center fw6" style="line-height: 15px;">MODELOS PARA FUNDICIÓN</span>

        @else

        <span class="lheader center fw6" style="line-height: 15px;">MODELOS PARA FUNDICIÓN</span>

        @endif

        </div>

        </a> 

      </div>



      <div class="col l2" style="margin-top: 32px;">  

        <a href="{{url('modelos/2')}}" style="color: inherit;">

        @if($active == 'modelos/2')

        <span class="lheader_active center fw6" style="line-height: 15px;">MECANIZADO DE PIEZAS</span>

        @else

        <span class="lheader center fw6" style="line-height: 15px;">MECANIZADO DE PIEZAS</span>

        @endif

        </a>   

      </div>






      <div class="col l2" style="margin-top: 32px;">

        <a href="{{url('compresor/1')}}" style="color: inherit;">

        @if($active == 'compresor1')

        <span class="lheader_active center fw6" style="line-height: 15px;">COMPRESORES AIRDIN</span>

        @else

        <span class="lheader center fw6" style="line-height: 15px;">COMPRESORES AIRDIN</span>

        @endif

        </a> 

      </div>




      <div class="col l2" style="margin-top: 32px;">

        <a href="{{url('luminaria/4')}}" style="color: inherit;">

        @if($active == 'luminaria4')

        <span class="lheader_active center fw6" style="line-height: 15px;">LUMINARIAS LED</span>

        @else

        <span class="lheader center fw6" style="line-height: 15px;">LUMINARIAS LED</span>

        @endif

        </a> 

      </div>




      <div class="col l2" style="margin-top: 39px;">  

        <a class='dropdown-trigger lheader center fw6' href='#' data-target='dropdown1' style="background-color: inherit; outline-color: white;">

        SERVICIOS          

        </a>

      </div>   

      

    </div>

  </div>

  <div class="col l1 hide-on-med-and-down" style="margin-top: 39px;">

    <a href="{{route('cliente')}}" style="color: inherit;">

    @if($active == 'cliente')

    <span class="lheader_active center fw6">CLIENTES</span>

    @else

    <span class="lheader center fw6">CLIENTES</span>

    @endif

    </a>

  </div>

</div>

</div>

</div>

</nav>



<style type="text/css">

  .header a:hover {

    background-color: inherit;

  }

</style>

  <!-- Dropdown Trigger -->

  <a class='dropdown-trigger ' href='#' data-target='dropdown1'></a>



  <!-- Dropdown Structure -->

  <ul id='dropdown1' class='dropdown-content' style="background-color: #333333;">

    <li>

      <a href="{{url('modelos/3')}}" class="Lato" style="color: white; @if($active == 'modelos/3') color: red; @endif">

      INDOMATRIX ENERGÍA

      </a>

    </li>

    <li>

      <a href="{{url('modelos/4')}}" class="Lato" style="color: white; @if($active == 'modelos/4') color: red; @endif">

      CALIBRES DE CONTROL

      </a>

    </li>

    <li>

      <a href="{{url('modelos/5')}}" class="Lato" style="color: white; @if($active == 'modelos/5') color: red; @endif">

      MECANIZADOS

      </a>

    </li>

        <li>

      <a href="{{url('modelos/6')}}" class="Lato" style="color: white; @if($active == 'modelos/6') color: red; @endif">

      MATRICERÍA

      </a>

    </li>

    <li>

      <a href="{{url('modelos/7')}}" class="Lato" style="color: white; @if($active == 'modelos/7') color: red; @endif">

      SERVICIOS DE FUNDICIÓN

      </a>

    </li>

    <li>

      <a href="{{url('modelos/8')}}" class="Lato" style="color: white; @if($active == 'modelos/8') color: red; @endif">

      EPOXIES / COMPOSITES

      </a>

    </li>

    <li>

      <a href="{{url('modelos/9')}}" class="Lato" style="color: white; @if($active == 'modelos/9') color: red; @endif">

      INGENIERÍA

      </a>

    </li>

    <li>

      <a href="{{url('modelos/10')}}" class="Lato" style="color: white; @if($active == 'modelos/10') color: red; @endif">

      DESARROLLO DE IDEAS

      </a>

    </li>

    <li>

      <a href="{{url('modelos/11')}}" class="Lato" style="color: white; @if($active == 'modelos/11') color: red; @endif">

      MÁQUINAS

      </a>

    </li>

    <li>

      <a href="{{url('modelos/12')}}" class="Lato" style="color: white; @if($active == 'modelos/12') color: red; @endif">

      COMPRESORES AIRDIN

      </a>

    </li>

    <li>

      <a href="{{url('modelos/13')}}" class="Lato" style="color: white; @if($active == 'modelos/13') color: red; @endif">

      MINERÍA

      </a>

    </li>

  </ul>











<div>

  <ul class="sidenav" id="mobile-demo">

    <li>

      <a href="{{route('index')}}">

        @if($active == 'home')

        <b>HOME</b>

        @else

        HOME

        @endif

      </a>

    </li>

    <li>

      <a href="{{route('empresax')}}">

        @if($active == 'empresa')

        <b>EMPRESA</b>

        @else

        EMPRESA

        @endif

      </a>

    </li>

    <li>

      <a href="{{url('luminaria/4')}}">

        @if($active == 'luminaria/4')

        <b>PRODUCTOS LUMINARIAS</b>

        @else

        PRODUCTOS LUMINARIAS

        @endif

      </a>

    </li>

    <li>

      <a href="{{url('compresor/1')}}">

        @if($active == 'compresor/1')

        <b>PRODUCTOS COMPRESORES</b>

        @else

        PRODUCTOS COMPRESORES

        @endif

      </a>

    </li>    

    <li>

      <a href="{{url('modelos/1')}}">

        @if($active == 'modelos/1')

        <b>MODELOS PARA FUNDICION</b>

        @else

        MODELOS PARA FUNDICION

        @endif

      </a>

    </li>    

    <li>

      <a href="{{url('modelos/2')}}">

        @if($active == 'modelos/2')

        <b>MECANIZADO DE PIEZAS</b>

        @else

        MECANIZADO DE PIEZAS

        @endif

      </a>

    </li>   

    <li>

      <a href="{{url('modelos/3')}}">

        @if($active == 'modelos/3')

        <b>INDOMATRIX ENERGÍA</b>

        @else

        INDOMATRIX ENERGÍA

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/4')}}">

        @if($active == 'modelos/4')

        <b>CALIBRES DE CONTROL</b>

        @else

        CALIBRES DE CONTROL

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/5')}}">

        @if($active == 'modelos/5')

        <b>MECANIZADOS</b>

        @else

        MECANIZADOS

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/6')}}">

        @if($active == 'modelos/6')

        <b>MATRICERÍA</b>

        @else

        MATRICERÍA

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/7')}}">

        @if($active == 'modelos/7')

        <b>SERVICIOS DE FUNDICIÓN</b>

        @else

        SERVICIOS DE FUNDICIÓN

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/8')}}">

        @if($active == 'modelos/8')

        <b>EPOXIES / COMPOSITES</b>

        @else

        EPOXIES / COMPOSITES

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/9')}}">

        @if($active == 'modelos/9')

        <b>INGENIERÍA</b>

        @else

        INGENIERÍA

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/10')}}">

        @if($active == 'modelos/10')

        <b>DESARROLLO DE IDEAS</b>

        @else

        DESARROLLO DE IDEAS

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/11')}}">

        @if($active == 'modelos/11')

        <b>MÁQUINAS</b>

        @else

        MÁQUINAS

        @endif

      </a>

    </li> 

    <li>

      <a href="{{url('modelos/12')}}">

        @if($active == 'modelos/12')

        <b>COMPRESORES AIRDIN</b>

        @else

        COMPRESORES AIRDIN

        @endif

      </a>

    </li>  

    <li>

      <a href="{{url('modelos/13')}}">

        @if($active == 'modelos/13')

        <b>MINERÍA</b>

        @else

        MINERÍA

        @endif

      </a>

    </li> 

    <li>

      <a href="{{route('cliente')}}">

        @if($active == 'cliente')

        <b>CLIENTE</b>

        @else

        CLIENTE

        @endif

      </a>

    </li> 

    <li>

      <a href="{{route('presupuesto')}}">

        @if($active == 'presupuesto')

        <b>PRESUPUESTO</b>

        @else

        PRESUPUESTO

        @endif

      </a>

    </li> 

    <li>

      <a href="{{route('novedades')}}">

        @if($active == 'novedades')

        <b>NOVEDADES</b>

        @else

        NOVEDADES

        @endif

      </a>

    </li> 

    <li>

      <a href="{{route('contacto')}}">

        @if($active == 'contacto')

        <b>CONTACTO</b>

        @else

        CONTACTO

        @endif

      </a>

    </li> 

  </ul>

</div>

