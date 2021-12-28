@extends('admin_layout')
@section('admin_content')
     <div class="container-fluid">
       <div class="col-lg-12">
        <div class="p-5">
            <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Cập nhật tin tức</h1>
            </div>
            <form class="user" action="{{URL::to('update-news/'.$news->id_news)}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <input value="{{$news->title_new}}" type="text" class="form-control form-control-user"
                        placeholder="Tiêu đề tin..." name="title_news">
                </div>
                <div class="form-group">
                    <input value="{{$news->short_desc}}" type="text" class="form-control form-control-user"
                    placeholder="Nội dung ngắn..." name="short_desc">
                </div>
                <div class="form-group">
                    <textarea id="content_edit" placeholder="Nội dung tin..." class="form-control ckeditor " name="content" >{{$news->content}}</textarea>
                </div>
                <div class="form-group">
                   <select class="form-control " name="status_news">
                    <option>Chọn trạng thái</option>
                    @if ($news->status == 1)
                    <option selected value="1">Hiện</option>
                    <option value="0">Ẩn</option>
                    @else
                    <option value="1">Hiện</option>
                    <option selected value="0">Ẩn</option>
                    @endif
                       
                   </select>
                </div>
                <div class="form-group">
                    <select class="form-control " name="category_news">
                        <option>Chọn danh mục</option>
                        @foreach ($category as $item => $cate_list)
                        <option {{$cate_list->id_category == $category_edit->id_category ? 'selected' : '' }} value="{{$cate_list->id_category}}">{{$cate_list->name_category}}</option>
                        @endforeach
                      
                    </select>
                 </div>
                 <img width="100" height="80" src="{{URL::to('public/storage/'.$news->image_new)}}" alt="image">
                <div class="form-group">
                    <label for="">Hình ảnh</label>
                    <input type="file" class=" form-control-user" name="image_news">
                </div>
               
                <button type="submit"  class="btn btn-primary btn-user btn-block">
                    Cập nhật tin tức
                </button>
               
            </form>
            
        </div>
    </div>
    </div>
@endsection