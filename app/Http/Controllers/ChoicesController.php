<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Choices;

class ChoicesController extends Controller
{
    public function index()
    {
        return Choices::all();
    }

    public function show($id)
    {
        return Choices::find($id);
    }

//get the choices for a particular question
    public function choice($id)
    {
        return Choices::where('questions_id',$id)->get();
    }

    public function store(Request $request)
    {
        $choices = Choices::create($request->all());

        return response()->json($choices, 201);
    }

    public function update(Request $request, $id)
    {
        $choices = Choices::findOrFail($id);
        $choices->update($request->all());

        return response()->json($choices, 200);
    }

    public function delete($id)
    {
        $choices = Choices::findOrFail($id);
        $choices->delete();

        return response()->json(null, 204);
    }
}
