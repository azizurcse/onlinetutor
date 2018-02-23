<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        return view('admin.posts.index')->with('posts',Post::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Category::all();
        $tags =Tag::all();

        if($categories->count()==0 || $tags->count() == 0)
        {
            Session::flash('info','You must have create category  or tag first');
            return redirect()->back();
        }


        return view('admin.posts.create')->with('categories',$categories)
                                                ->with('tags',Tag::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'title'=>'required|max:190',
            'featured'=>'required|image',
            'content_post'=>'required',
            'category_id'=>'required',
            'tags'=>'required'

        ]);
        $featured=$request->featured;
        $featured_new_name=time().$featured->getClientOriginalName();
        $featured->move('uploads/posts',$featured_new_name);
        $post=Post::create([
            'title'=>$request->title,
            'content_post'=>$request->content_post,
            'featured'=>'uploads/posts/'.$featured_new_name,
            'category_id'=>$request->category_id,
            'slug'=>str_slug($request->title),
            'user_id'=>Auth::id()
        ]);

        $post->tags()->attach($request->tags);
        Session::flash('success','Post created successfully');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post=Post::find($id);

        return view('admin.posts.edit')->with('post',$post)
                                            ->with('categories',Category::all())
                                            ->with('tags',Tag::all());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'title'=>'required',
            'content_post'=>'required',
            'category_id'=>'required'
        ]);

        $post=Post::find($id);

        if($request->hasFile('featured'))
        {
            $featured=$request->featured;
            $featured_new_nme=time() . $featured->getClientOriginalName();
            $featured->move('uploads/posts',$featured_new_nme);
            $post->featured='uploads/posts/' .$featured_new_nme;

        }

        $post->title=$request->title;
        $post->content_post=$request->content_post;
        $post->category_id=$request->category_id;
        $post->save();

        $post->tags()->sync($request->tags);

        Session::flash('success','Post updated successfully');
        return redirect()->route('posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post=Post::find($id);
        $post->delete();
        Session::flash('success','The post was trashed');
        return redirect()->back();
    }

    public function trashed()
    {
        $posts=Post::onlyTrashed()->get();

        return view('admin.posts.trashed')->with('posts',$posts);
    }

    public function kill($id)
    {
        $posts=Post::withTrashed()->where('id',$id)->first();

        $posts->forceDelete();

        Session::flash('success','Post permanently deleted');
        return redirect()->back();
    }

    public function restore($id)
    {
        $post=Post::withTrashed()->where('id',$id)->first();

        $post->restore();

        return redirect()->route('posts');
    }
}
