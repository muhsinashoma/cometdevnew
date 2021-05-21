<?php

namespace App\Http\Controllers;

use App\Models\Category;
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
 * Blog search by category
 */

  public function blogSearchByCat($slug){
     // echo $slug; //to see the selected category
      $cats = Category::where('slug', $slug) ->first();
      //return $cats;  //to catch the category id and we will fetch all posts under this id

       foreach ($cats ->posts as $post){

           if(isset($post)){
              // echo $post ->title;
               return view('comet.category-blog', [
                   'all_posts' =>$cats ->posts
               ]);
           }
       }

  }


    /**
     * Show single blog
     */

    public function blogSingle($slug){
        $single_post =  Post::where('slug', $slug) ->first();
        return view('comet.blog-single', compact('single_post'));  //to show blog-single page
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
