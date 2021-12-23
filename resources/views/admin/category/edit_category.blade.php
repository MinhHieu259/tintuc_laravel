@extends('admin_layout')
@section('admin_content')
     <div class="container-fluid">
       <div class="col-lg-12">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Cập nhật danh mục</h1>
            </div>
            <form class="user" action="{{URL::to('update-category/'.$category->id_category)}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <input value="{{$category->name_category}}" type="text" class="form-control form-control-user"
                        placeholder="Tên danh mục..." name="name_category">
                </div>
                <img width="100" height="80" src="{{URL::to('public/storage/'.$category->image_category)}}" alt="image">
                <div class="form-group">
                    <label for="">Hình ảnh</label>
                    <input type="file" class=" form-control-user" name="image_category">
                </div>
               
                <button type="submit"  class="btn btn-primary btn-user btn-block">
                    Cập nhật danh mục
                </button>
               
            </form>
            
        </div>
    </div>
    </div>
@endsection