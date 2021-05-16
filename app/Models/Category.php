<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $guarded = [];


    // Now I am at category table and One category can have multiple posts. Relation will be many to many

   //  One category  can have multiple posts

    public function posts(){
        return $this -> belongsToMany('App\Models\Post');
    }




}


