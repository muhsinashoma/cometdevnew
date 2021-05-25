<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     *  Get Slug Name
     */

   // Private means  only we will use  inside controller class, public means we can use or access outside the controller class

   // We will use protected because we will access only inside controller class

    //Such a feature which is needed to access from all controllers in this case we will call inside conroller and use protected class

    protected function getSlug($slug_data){
        return str_replace(' ', '-', $slug_data);
    }



    /**
     * //We need helper class inside Controller.php and  we want to use extends class
     * Embeded youtube and vimeo link
     * $vedio_link1 = 'https://vimeo.com/160751249';   normal link . It will be converted into embeded link

     * https://player.vimeo.com/video/160751249
     *
     * $vedio_link2 = 'https://www.youtube.com/watch?v=cHqfk5lMw-E&t=49s';  normal link. It will be converted into embeded link
     */

    /*
     * https://vimeo.com/440993892
     *
     * How to convert into embed link for play list
     * &t is common
     * &list
     *  We have to use explore() for for &t and &lit
     * watch?v=embed/
     * https://www.youtube.com/embed/SlPhMPnQ58k &list=PL4o29bINVT4EG_y-k5jGoOu3-Am8Nvi10   -->normal link
     * https://www.youtube.com/embed/SlPhMPnQ58k  ---->embeded link
     *
     */



    /* Normal link   ---> https://www.youtube.com/watch?v=SlPhMPnQ58k&list=PL4o29bINVT4EG_y-k5jGoOu3-Am8Nvi10
     * Embed Link ---> <iframe width="560" height="315" src="https://www.youtube.com/embed/SlPhMPnQ58k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
     */


    protected function getEmbed($link){

        if(str_contains($link, 'youtube')){
            return str_replace('watch?v=', 'embed/', $link);
        } elseif (str_contains($link, 'vimeo')){
            return str_replace('vimeo.com', 'player.vimeo.com/video', $link);
        }

        else{
            return 'Invalid video link ';
        }

    }



}
