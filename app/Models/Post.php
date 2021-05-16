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

}
