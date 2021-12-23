@extends('admin_layout')
@section('admin_content')
     <div class="container-fluid">
       <div class="col-lg-12">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Thêm mới danh mục</h1>
            </div>
            <form class="user" action="{{URL::to('insert-category')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <input type="text" class="form-control form-control-user"
                        placeholder="Tên danh mục..." name="name_category">
                </div>
                <div class="form-group">
                    <label for="">Hình ảnh</label>
                    <input type="file" class=" form-control-user" name="image_category">
                </div>
               
                <button type="submit"  class="btn btn-primary btn-user btn-block">
                    Thêm danh mục
                </button>
               
            </form>
            
        </div>
    </div>
    </div>
@endsection