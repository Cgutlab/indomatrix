@extends('adm.main')

@section('titulo', 'Editar Modelo Item')

@section('cuerpo')
<main>
	<div class="container">
	    @if(count($errors) > 0)
		<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
	  		<ul>
	  			@foreach($errors->all() as $error)
	  				<li>{!!$error!!}</li>
	  			@endforeach
	  		</ul>
	  	</div>
		@endif
		@if(session('success'))
		<div class="col s12 card-panel green lighten-4 green-text text-darken-4">
			{{ session('success') }}
		</div>
		@endif

		<div class="row">
			<div class="col s12">
			<a href="{{ route('galeriamodelo.create',$category->id) }}"><i title="Agregar" class="material-icons medium">add_a_photo</i></a>
			<b>{!!$category->titulo!!}</b>

				<table class="highlight bordered">
				<thead>
					<td>Imagen</td>
					<td>Titulo</td>
					<td>Orden</td>
					<td class="text-right">Acciones</td>
				</thead>
				<tbody>
				@foreach($galerias as $galeria)
					<tr>
						<td><img class="logo" src="{{ asset('imagenes/galeriamodelo/'.$galeria->imagen) }}" height="50px"></td>
						<td>{!! $galeria->titulo !!}</td>
						<td>{!! $galeria->orden !!}</td>
						<td class="text-right">	

              <a href="{{ route('galeriamodelo.edit',$galeria->id) }}"><i title="Editar" class="material-icons">create</i></a>
               {!!Form::open(['class'=>'en-linea', 'route'=>['galeriamodelo.destroy', $galeria->id], 'method' => 'DELETE'])!!}
                <button type="submit" class="submit-button" id="delete-btn">
                  <i title="Eliminar" class="material-icons red-text">cancel</i>
                </button>
	           {!!Form::close()!!}                
           </td>
          </tr>
        @endforeach
        </tbody>
      </table>      
      </div>
    </div>
    {!! $galerias->render() !!}
    </div>
</main>


@endsection