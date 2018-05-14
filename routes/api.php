<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//questions api route definitions
Route::get('questions', 'QuestionsController@index');
Route::get('questions/{id}', 'QuestionsController@show');
Route::post('questions', 'QuestionsController@store');
Route::put('questions/{id}', 'QuestionsController@update');
Route::delete('questions/{id}', 'QuestionsController@delete');

//choices api route definitions
Route::get('choices', 'ChoicesController@index');
Route::get('choices/{id}', 'ChoicesController@show');
Route::post('choices', 'ChoicesController@store');
Route::put('choices/{id}', 'ChoicesController@update');
Route::delete('choices/{id}', 'ChoicesController@delete');