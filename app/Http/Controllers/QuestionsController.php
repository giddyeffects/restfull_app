<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Questions;

class QuestionsController extends Controller
{
    public function index()
    {
        return Questions::all();
    }

    public function show($id)
    {
        return Questions::find($id);
    }

    public function store(Request $request)
    {
        $questions = Questions::create($request->all());

        return response()->json($questions, 201);
    }

    public function update(Request $request, $id)
    {
        $questions = Questions::findOrFail($id);
        $questions->update($request->all());

        return response()->json($questions, 200);
    }

    public function delete(Request $request, $id)
    {
        $questions = Questions::findOrFail($id);
        $questions->delete();

        return response()->json(null, 204);
    }
}
