<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Press extends Model
{

    protected $fillable = [
        'user_id',
        'article_title',
        'publication_name',
        'when_published',
        'author_name',
        'is_in_english',
        'is_confirm',
        'is_reviewed',
        'article_translation_back_later',
        'publication_back_later',
        'publication_translation_back_later',
        'article_type',


    ];

    protected $dates = ['when_published'];
    protected $with = ['documents'];

    public function documents()
    {
        return $this->morphToMany(Document::class, 'documental')->withPivot('user_id','document_type');
    }

    /*public function setWhenPublishedAttribute($publishingTime)
    {
        $this->attributes['when_published'] = Carbon::createFromFormat('Y-m-d', $time, $tz);
    }

    public function getWhenPublishedAttribute($publishingTime)
    {
        return ;
    }*/
}
