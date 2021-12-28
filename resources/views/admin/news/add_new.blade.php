@extends('admin_layout')
@section('admin_content')
     <div class="container-fluid">
       <div class="col-lg-12">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Thêm mới tin tức</h1>
            </div>
            <form class="user" action="{{URL::to('insert-news')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <input type="text" class="form-control form-control-user"
                        placeholder="Tiêu đề tin..." name="title_news">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control form-control-user"
                        placeholder="Nội dung ngắn..." name="short_desc">
                </div>
                <div class="form-group">
                    <textarea id="content" placeholder="Nội dung tin..." class="form-control ckeditor" name="content" ></textarea>
                </div>
                <div class="form-group">
                   <select class="form-control " name="status_news">
                    <option>Chọn trạng thái</option>
                       <option value="1">Hiện</option>
                       <option value="0">Ẩn</option>
                   </select>
                </div>
                <div class="form-group">
                    <select class="form-control " name="category_news">
                        <option>Chọn danh mục</option>
                        @foreach ($category as $item => $cate_list)
                        <option value="{{$cate_list->id_category}}">{{$cate_list->name_category}}</option>
                        @endforeach
                      
                    </select>
                 </div>

                <div class="form-group">
                    <label for="">Hình ảnh</label>
                    <input type="file" class=" form-control-user" name="image_news">
                </div>
               
                <button type="submit"  class="btn btn-primary btn-user btn-block">
                    Thêm tin tức
                </button>
               
            </form>
            
        </div>
    </div>
    </div>
@endsection