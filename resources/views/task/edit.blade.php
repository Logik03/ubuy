@extends('dashboard.app')

@section('content')


<div class='col-lg-4 col-lg-offset-4'>

    @if ( count( $errors ) > 0 )
        @foreach ($errors->all() as $error)
            <div class='bg-danger alert'>{{ $error }}</div>
        @endforeach
    @endif


		<h1><i class='fa fa-lock'></i> Edit Task</h1>

			<form action="{{route('task.update', $task->id) }}" class=""  method="POST">
			    @csrf
			    <div class="form-group mb-4">
				     <label>Title</label>
				      <input type="text" name="title" placeholder="" class="form-control" value="{{$task->name}}">
			    </div>
			    
			    <div class="form-group">
                	<input type="submit" value="Save" class="btn btn-primary">
              	</div>

              	<div class="form-group">
                	<a href="{{route('dashboard')}}">Back</a>
              	</div>
			</form>

</div>




@endsection


