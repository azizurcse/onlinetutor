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
    <h2 class="text-center">
        <div class="panel panel-default">
            <div class="panel-heading">
                Create new post
            </div>
            <div class="panel-body">
                <form action="{{route('category.store')}}" method="post">
                    {{csrf_field()}}

                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="form-group">
                        <div class="text-center">
                            <button class="btn btn-success">
                                Submit Category
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </h2>

@stop