<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Document extends Model
{


    public $timestamps = false;


    public $fillable = [
        'user_id',
        'document_name',
        'document_type',
        'is_translated',
        'is_in_english',

    ];

    public function documentals()
    {
        return $this->hasMany(Documental::class);
    }

    public function presses()
    {
        return $this->morphedByMany(Press::class, 'documental');
    }


}
