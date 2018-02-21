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
            Create new user
        </div>
        <div class="panel-body">
            <form action="{{route('user.profile.update')}}" method="post" enctype="multipart/form-data">
                {{csrf_field()}}

                <div class="form-group">
                    <label for="name">user</label>
                    <input type="text" name="name" value="{{$user->name}}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="name">Email</label>
                    <input type="email" name="email" value="{{$user->email}}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="name">New password</label>
                    <input type="password" name="password" class="form-control">
                </div>
                <div class="form-group">
                    <label for="name">New avatar</label>
                    <input type="file" name="avatar" class="form-control">
                </div>
                <div class="form-group">
                    <label for="name">Facebook profile</label>
                    <input type="text" name="facebook" value="{{$user->profile->facebook}}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="name">Youtube profile</label>
                    <input type="text" name="youtube" value="{{$user->profile->youtube}}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="name">About</label>
                    <textarea name="about" id="about" cols="6" rows="6" class="form-control">{{$user->profile->about}}</textarea>
                </div>
                <div class="form-group">
                    <div class="text-center">
                        <button class="btn btn-success">
                            Update profile
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    {{--</h2>--}}

@stop