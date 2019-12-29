



 <footer style="width: 100%; background: #272727;">

 <div class="container yp25" style="width: 100%; height: 100%;">

 <div class="row cero" style="margin-bottom: 30px;">
{{-- aqui va  col l4 --}}
 	<div class="col l5 s12 hide-on-med-and-down">

 		<img class="responsive-img ym30" src="{{asset('imagenes/logos/'.$footer->imagen)}}">

    <div align="center" style="margin-top: 25px;">

      @foreach($redes as $rede)

        <a href="{{($rede->ruta)}}" target="_blank" style="margin: 12px;">

          <img class="responsive-img cero" src="{{asset('imagenes/redes/'.$rede->imagen)}}">

        </a>

      @endforeach</div>

 	</div>

 	<div class="col l7 s12"> 	 	

 		<div class="row cero" style="margin-bottom: 0;">

{{--  este dejalo comentado

 			<div class="col l4 s12">

--}}


    {{-- aqui va  col l4 --}}
 			<div class="col l6 s12">

      <div class="row">

        <div class="col l4 s4">

          <h5 class="rojo1">SITEMAP</h5>

          <ul>

            <li><a class="cero fs12 Lato" href="{{route('index')}}">HOME</a></li>

            <li class=""><a class="cero fs12 Lato" href="{{route('empresax')}}">EMPRESA</a></li>

            <li class=""><a class="cero fs12 Lato" href="{{url('luminaria/4')}}">PRODUCTOS</a></li>

            <li class=""><a class="cero fs12 Lato" href="{{url('modelos/1')}}">SERVICIOS</a></li>

          </ul>

        </div>

        <div class="col l8 s8">

          <h5 class="rojo1">&nbsp;</h5>

          <ul>

            <li class=""><a class="cero fs12 Lato" href="{{route('cliente')}}">CLIENTES</a></li>

            <li class=""><a class="cero fs12 Lato" href="{{route('novedades')}}">NOVEDADES</a></li>

            <li class=""><a class="cero fs12 Lato" href="{{route('presupuesto')}}">SOLICITUD DE PRESUPUESTO</a></li>

            <li class=""><a class="cero fs12 Lato" href="{{route('contacto')}}">CONTACTO</a></li>

          </ul>

        </div>

      </div> 				

 			</div>


    {{-- aqui va  col l4 --}}
 			<div class="col l6 s12">

 				<div class="row cero" style="margin-bottom: 0;">

 					<div class="offset-l1 col l11">

						<div class="row cero noFooterIcon">

							<div class="offset-l2 col l10 cero fw4 blanco s10 fs12" style="margin-bottom: 0;">

								<h5 class="rojo1">FÁBRICA Y VENTAS</h5>

							</div>

						</div>

						<div class="row cero noFooterIcon">

							<div class="col l2 cero noFooterIcon s2" style="padding-top: 0px;">

								<img class="responsive-img" src="{{asset('imagenes/help/address.png')}}">

							</div>

							<div class="col l10 cero fw4 blanco s10 editorRico fs12" style="margin-bottom: 0;">

								{!!$direccion->texto!!}

							</div>

						</div>

						<div class="row cero noFooterIcon" style="padding-top: 10px;">

							<div class="col l2 cero noFooterIcon s2">

								<img class="responsive-img" src="{{asset('imagenes/help/phone.png')}}">

							</div>

							<div class="col l10 cero fw4 blanco s10 editorRico fs12" style="margin-bottom: 0;">

								{!!$telefono->texto!!}

							</div>

						</div>

						<div class="row cero noFooterIcon" style="padding-top: 10px;">

							<div class="col l2 cero noFooterIcon s2">

								<img class="responsive-img" src="{{asset('imagenes/help/email.png')}}">

							</div>

							<a href="mailto:{{$correo->texto}}">

							<div class="col l10 cero fw4 blanco s10 editorRico fs12" style="margin-top: 4px;" >

								{!!$correo->texto!!}

							</div>

							</a>

						</div>

 					</div>

 				</div>

 			</div>

    {{-- aqui va  col l4
      <div class="col l4 s12">

        <div class="row cero" style="margin-bottom: 0;">

          <div class="offset-l1 col l11">

            <div class="row cero noFooterIcon">

              <div class="offset-l2 col l10 cero fw4 blanco s10" style="margin-bottom: 0;">

                <h5 class="rojo1">OFICINA</h5>

              </div>

            </div>

            <div class="row cero noFooterIcon">

              <div class="col l2 cero noFooterIcon s2" style="padding-top: 0px;">

                <img class="responsive-img" src="{{asset('imagenes/help/address.png')}}">

              </div>

              <div class="col l10 cero fw4 blanco s10 editorRico fs12" style="margin-bottom: 0;">

                {!!$oficina->texto!!}

              </div>

            </div>

            <div class="row cero noFooterIcon" style="padding-top: 10px;">

              <div class="col l2 cero noFooterIcon s2">

                <img class="responsive-img" src="{{asset('imagenes/help/phone.png')}}">

              </div>

              <div class="col l10 cero fw4 blanco s10 editorRico fs12" style="margin-bottom: 0;">

                {!!$horario->texto!!}

              </div>

            </div>

            

          </div>

        </div>

       </div>  
--}}
 		</div>

 	</div>

 </div>	

 </div>

</footer>

