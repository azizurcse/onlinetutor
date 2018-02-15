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
        @foreach($posts as $post)

            <tr>
                <td>
                    <img src="{{$post->featured}}" alt="{{$post->title}}" width="90px" height="50px">
                </td>
                <td>
                    {{$post->title}}
                </td>
                <td>
                    <a href="{{route('category.edit',['id'=>$post->id])}}" class="btn btn-xs btn-info">
                            <span class="glyphicon glyphicon-pencil">
                                Edit
                            </span>
                    </a>
                </td>
                <td>
                    <a href="{{route('category.delete',['id'=>$post->id])}}" class="btn btn-xs btn-danger">
                            <span class="glyphicon glyphicon-trash">
                                Delete
                            </span>
                    </a>
                </td>
            </tr>

        @endforeach
        </tbody>
    </table>

@stop