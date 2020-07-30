<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Task;
use App\User;

class TaskController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

//  Read tasks belonging to a authenticated user 
    public function index(Request $request)
    {
    	$tasks = Task::where('user_id', $request->user()->id)->get();
    	
    	return view('task.index',compact('tasks'));
    }
// Create a New Task belonging to a user in the database
    public function store (Request $request)
	{
		$request->validate([
			'title' => 'required|max:255',
		]);

		 $request->user()->tasks()->create([
        	'name' => $request->title,
    	]);

    	return redirect('/tasks');
	}

// Read a Task to Edit
	public function edit($id)
    {
    	$task = Task::find($id);
    	return view('task.edit',compact('task'));
        

    }

//Update an Existing Task belonging to a user in the database
	public function update(Request $request, $id)
	{
		$request->validate([
            'title'    =>'required|max:255'
        ]);

        $task = Task::find($id);
        $task->name  = $request->title;
        $task->save();
        return redirect('/tasks');
	}
   

 // Delete a task belonging to a user completely from the database
	public function destroy($id)
	{
    	$task = Task::find($id);

    	$task->delete();

    	 return redirect('/tasks');
	}
}
