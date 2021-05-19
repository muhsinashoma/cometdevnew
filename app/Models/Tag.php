<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;

    protected $guarded = [];


    //same way we will find posts from tag model

    //We will create relationship between post model and tag model and we have to create another migration file and migration file name will be post_tag
    //Migration file name will be alphabetic way post_tag
    //We will find tags from post model
    //Now we have to think from tag model, Multiple posts can have in one tag

    //We will find how many posts have inside one tag

    public function posts(){
        return $this->belongsToMany('App\Models\Post');
    }

}


