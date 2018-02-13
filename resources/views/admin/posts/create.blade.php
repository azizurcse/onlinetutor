@extends('layouts.app')

@section('content')

    <h2 class="text-center">
        <div class="panel panel-default">
            <div class="panel-heading">
                Create new post
            </div>
            <div class="panel-body">
                <form action="{{route('post.store')}}" method="post">
                    {{csrf_field()}}

                    <div class="form-group">
                        <label for="title">title</label>
                        <input type="text" name="title" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="featured">featured image</label>
                        <input type="file" name="featured" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="content">content</label>
                        <textarea name="content" id="content" cols="5" rows="5" class="form-control"></textarea>
                    </div>

                    <div class="form-group">
                        <div class="text-center">
                            <button class="btn btn-success">
                                Submit Post
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </h2>

@stop