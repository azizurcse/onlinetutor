@extends('layouts.app')

@section('content')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {{--<h2 class="text-center">--}}
        <div class="panel panel-default">
            <div class="panel-heading">
                Create new post
            </div>
            <div class="panel-body">
                <form action="{{route('post.update',['id'=>$post->id])}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}

                    <div class="form-group">
                        <label for="title">title</label>
                        <input type="text" name="title" class="form-control" value="{{$post->title}}">
                    </div>
                    <div class="form-group">
                        <label for="featured">featured image</label>
                        <input type="file" name="featured" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="category">Select Category</label>
                        <select name="category_id" id="category" class="form-control">
                            @foreach($categories as $category)
                                <option value="{{$category->id}}"
                                    @if($post->category->id == $category->id)
                                        selected
                                    @endif
                                >{{$category->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="category">Select Tag</label>
                            @foreach($tags as $tag)
                                <div class="checkbox">
                                    <label for=""><input type="checkbox" name="tags[]" value="{{$tag->id}}"

                                        @foreach($post->tags as $t)
                                            @if($tag->id == $t->id)
                                                checked

                                            @endif


                                        @endforeach


                                        />{{$tag->tag}}</label>
                                </div>
                            @endforeach

                    </div>
                    <div class="form-group">
                        <label for="content">content</label>
                        <textarea name="content_post" id="content" cols="5" rows="5" class="form-control">{{$post->content_post}}</textarea>
                    </div>

                    <div class="form-group">
                        <div class="text-center">
                            <button class="btn btn-success">
                                Update Post
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    {{--</h2>--}}

@stop