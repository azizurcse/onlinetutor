@extends('layouts.app')


@section('content')

    <table class="table table-hover">
        <thead>
            <th>Name</th>
            <th>Edit</th>
            <th>Delete</th>
        </thead>

        <tbody>

            @if($categories->count() > 0)

                @foreach($categories as $category)

                    <tr>
                        <td>
                            {{$category->name}}
                        </td>
                        <td>
                            <a href="{{route('category.edit',['id'=>$category->id])}}" class="btn btn-xs btn-info">
                            <span class="glyphicon glyphicon-pencil">
                                Edit
                            </span>
                            </a>
                        </td>
                        <td>
                            <a href="{{route('category.delete',['id'=>$category->id])}}" class="btn btn-xs btn-danger">
                            <span class="glyphicon glyphicon-trash">
                                Delete
                            </span>
                            </a>
                        </td>
                    </tr>

                @endforeach

            @else
                <tr>
                    <th colspan="5" class="text-center">No trashed post here</th>
                </tr>
            @endif
        </tbody>
    </table>

@stop