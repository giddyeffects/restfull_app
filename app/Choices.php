<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Choices extends Model
{
    /**
     * Get the question that owns the choice.
     */
    public function questions()
    {
        return $this->belongsTo('App\Questions');
    }
}
