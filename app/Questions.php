<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Questions extends Model
{
    //
    protected $fillable = ['question', 'answer_id'];

    /**
     * Get the choices for the question
     */
    public function choices()
    {
        return $this->hasMany('App\Choices');
    }
}
