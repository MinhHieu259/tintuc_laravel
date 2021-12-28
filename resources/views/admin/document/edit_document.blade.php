@extends('admin_layout')
@section('admin_content')
     <div class="container-fluid">
       <div class="col-lg-12">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Cập nhật tài liệu</h1>
            </div>
            <form class="user" action="{{URL::to('update-document/'.$document->id_document)}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <input value="{{$document->name_document}}" type="text" class="form-control form-control-user"
                        placeholder="Tên tài liệu..." name="name_file">
                </div>
                <div class="form-group">
                    <label for="">File</label>
                    <input  type="file" class=" form-control-user" name="file">
                    <label >{{$document->file}}</label>
                </div>
               
                <button type="submit"  class="btn btn-primary btn-user btn-block">
                    Cập nhật tài liệu
                </button>
               
            </form>
            
        </div>
    </div>
    </div>
@endsection