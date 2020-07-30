@extends('dashboard.app')

@section('content')

<!-- Bootstrap Boilerplate... -->

    <div class="panel-body">
        <!-- Display Validation Errors -->

         @include('common.errors')
        

        <!-- New Task Form -->
        <form action="{{route('create')}}" method="POST" class="form-horizontal">
            @csrf

            <!-- Task Name -->
            <div class="form-group">
                <label for="task-name" class="col-sm-3 control-label">Create a task</label>

                <div class="col-sm-6">
                    <input type="text" name="title" id="task-name" class="form-control" placeholder="title">
                </div>
            </div>

            <!-- Add Task Button -->
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-danger">
                        <i class="fa fa-plus"></i> Add Task
                    </button>
                </div>
            </div>
        </form>
    </div>

    <!-- TODO: Current Tasks -->
    @if (count($tasks) > 0)
        <div class="panel panel-default">
            <div class="panel-heading">
                Current Tasks
            </div>

            <div class="panel-body">
                <table class="table table-striped task-table">

                    <!-- Table Headings -->
                    <thead>
                        <th>Task</th>
                        <th>&nbsp;</th>
                    </thead>

                    <!-- Table Body -->
                    <tbody>
                    @foreach ($tasks as $task)
                            <tr>
                                <!-- Task Name -->
                                <td class="table-text">
                                    <div>{{$task->name}}</div>
                                </td>
                                <td class="text-right">
            						<a href="{{ route('task.edit', $task->id) }}" class="btn btn-warning" id="editbtn"><i class="fa fa-pencil-square-o"></i></a>
            					</td>
            

          

                                <td class="text-right">
                                    <form action="{{ route('task.delete', $task->id) }}" method="POST">
                                        @csrf
                                         @method('DELETE')

                                        <button type="submit" id="delete-task" class="btn btn-danger">
                                        <i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
  @endif
@endsection