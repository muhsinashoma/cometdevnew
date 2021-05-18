<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class BlogPageController extends Controller
{
    /**
     * Blog Page Show
     */

    public function showBlogPage(){
//        $all_posts = Post::where([
//            ['status', '=', true],
//            ['trash', '=', false]
//        ]) ->latest() -> paginate(3);

        //or
        // $all_posts = Post::where('status', '=', true) -> where('trash','=', false) ->latest()->paginate(3);

        // $all_posts = Post::where('status', true) -> orWhere('trash', false)->latest()->paginate(3);

        $all_posts = Post::where('status', true) -> where('trash', false) -> latest()-> paginate(2);
        return view('comet.blog', [
            'all_posts'     => $all_posts
        ]);
    }

    /**
     * Blog Page Show backup main
     */
//    public function showBlogPage(){
//        $all_posts = Post::where('status', true) -> where('trash', false)  -> latest() -> paginate(2);
//        return view('comet.blog', [
//            'all_posts'     => $all_posts
//        ]);
//    }



}
