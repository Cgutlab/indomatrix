@extends('adm.main')

@section('titulo', 'Editar Galeria Novedad')

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
			{!!Form::model($galeria, ['route'=>['galerianovedad.update', $galeria->id], 'method'=>'PUT', 'files' => true])!!}
{{--
  				<div class="row">
		
					<div class="input-field col s3">
						Seleccione un modelo: 
					</div>
					<div class="input-field col s9">
						<select name="id_productos_modelos" style="display: inherit;" required>
						@foreach($categorias as $categoria)						
            			<option value="{{$categoria->id}}" @if($categoria->id == $galeria->id_categorias_modelos) selected @endif>{!!$categoria->titulo!!}</option>
						@endforeach
						</select>
					</div>	
		        </div>
--}}

				<div class="row">
					<div class="file-field input-field col s8">
						<div class="btn">
						    <span>Imagen</span>
						    {!! Form::file('imagen') !!}
						</div>
						<div class="file-path-wrapper">
						    {!! Form::text('',$galeria->imagen, ['class'=>'file-path validate', 'required', 'placeholder'=>'Recomendado (  X  )']) !!}
						</div>
					</div>
					<div class="input-field col s4">
						{!!Form::label('Orden')!!}
						{!!Form::text('orden',$galeria->orden,['class'=>'validate','required'])!!}
					</div>	
				</div>							
				
				{!!Form::submit('guardar', ['class'=>'waves-effect waves-light btn right'])!!}
			{!!Form::close()!!} 
		</div>
	</div>
</main>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('texto');
	CKEDITOR.replace('texto1');
    CKEDITOR.config.width = 500;
    CKEDITOR.config.width = '99%';
</script>
@endsection