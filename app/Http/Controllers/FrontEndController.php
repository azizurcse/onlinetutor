<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Setting;
use App\Subscribe;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class FrontEndController extends Controller
{
    public function index()
    {
        return view('index')->with('title',Setting::first()->site_name)
                                  ->with('categories',Category::take(4)->get())
                                  ->with('first_post',Post::orderBy('created_at','desc')->first())
            ->with('second_post',Post::orderBy('created_at','desc')->skip(1)->take(1)->get()->first())
            ->with('third_post',Post::orderBy('created_at','desc')->skip(2)->take(1)->get()->first())
            ->with('wordpress',Category::find(4))
            ->with('codeigniter',Category::find(5))
            ->with('settings',Setting::first());
    }

    public function singlePost($slug)
    {
        $post=Post::where('slug',$slug)->first();
        $next_id=Post::where('id','>',$post->id)->min('id');
        $prev_id=Post::where('id','<',$post->id)->max('id');
        return view('single')->with('post',$post)
            ->with('title',$post->title)
            ->with('settings',Setting::first())
            ->with('categories',Category::take(4)->get())
            ->with('next',Post::find($next_id))
            ->with('prev',Post::find($prev_id))
            ->with('tags',Tag::all());
    }

    public function category($id)
    {
        $category=Category::find($id);
        return view('category')->with('category',$category)
            ->with('title',$category->title)
            ->with('settings',Setting::first())
            ->with('categories',Category::take(4)->get());

    }

    public function tag($id)
    {
        $tag=Tag::find($id);
        return view('tag')->with('tag',$tag)
            ->with('title',$tag->tag)
            ->with('settings',Setting::first())
            ->with('categories',Category::take(4)->get());
    }

    public function subscribe(Request $request)
    {

//        dd($request->all());
//        return redirect()->back();
        $this->validate($request,[
            'subs_email'=>'required|email|unique:subscribes'
        ]);
//        dd($request->all());
        $subscribe_user_email= new Subscribe;
        $subscribe_user_email->subs_email=$request->subs_email;
        $subscribe_user_email->save();
        Session::flash('success','You successfully subscribe');
        return redirect()->back();
    }
}
