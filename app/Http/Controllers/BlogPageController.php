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
 * Blog search by search box
 */
//We have used Post method that's why from request data will be catch and taken
public function blogSearch(Request $request){

     // return $request -> all();   //to test search value  {"_token":"ySHIiJyqeJPDBrFS0E50jcTEhAo5Jtbd9nR87ki4","search":"ami"}

    if(empty($request ->search)){
        $search = '';
    }else{
        $search = $request ->search;
    }


     $search = $request ->search;
     $posts = Post::where('title', 'LIKE', '%'. $search .'%') ->orWhere('content', 'LIKE', '%'.$search.'%') ->orWhere('created_at','LIKE', '%'.$search.'%') -> latest() ->paginate();

//     echo "pre";
//     print_r($posts);
//     echo "pre";

    return view('comet.blog-search', [
        'all_posts' => $posts
    ]); //return to any view

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
