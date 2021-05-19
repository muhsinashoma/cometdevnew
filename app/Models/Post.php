<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;


    protected  $guarded = [];

    //We will hit user table to take all information through post table. user_id have in post table that's means post table belongs to user_id that's why we have to use belongsTo


    public function user(){
        return $this -> belongsTo('App\Models\User');
    }


    // Now I am at post table and multiple categories can have with one post .  Multiple posts can have with one category  // Many to many relationship have to use

    // One post can have multiple categories

    public function categories(){
        return $this -> belongsToMany('App\Models\Category');  //belonsToMany() function have to use for many to many relationship
    }


     //We will create relationship between post model and tag model and we have to create another migration file  and migration file name will be post_tag
     //Migration file name will be alphabetic way post_tag
     //We will find tags from post model
     //Now we have to think from post model, Multiple tags can have in one post


     //We will find how many tags have inside one post

      public function tags(){
         return $this->belongsToMany('App\Models\Tag');
      }

}
