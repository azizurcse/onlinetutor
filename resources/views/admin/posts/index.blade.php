@extends('layouts.app')


@section('content')

    <table class="table table-hover">
        <thead>
        <th>Image</th>
        <th>Title</th>
        <th>Edit</th>
        <th>Delete</th>
        </thead>

        <tbody>

        @if($posts->count() > 0)

            @foreach($posts as $post)

                <tr>
                    <td>
                        <img src="{{$post->featured}}" alt="{{$post->title}}" width="90px" height="50px">
                    </td>
                    <td>
                        {{$post->title}}
                    </td>
                    <td>
                        <a href="{{route('post.edit',['id'=>$post->id])}}" class="btn btn-xs btn-info">
                            <span class="glyphicon glyphicon-pencil">
                                Edit
                            </span>
                        </a>
                    </td>
                    <td>
                        <a href="{{route('post.delete',['id'=>$post->id])}}" class="btn btn-xs btn-danger">
                            <span class="glyphicon glyphicon-trash">
                                Trash
                            </span>
                        </a>
                    </td>
                </tr>

            @endforeach

        @else
            <tr>
                <th colspan="5" class="text-center">No post here</th>
            </tr>
        @endif
        </tbody>
    </table>

@stop