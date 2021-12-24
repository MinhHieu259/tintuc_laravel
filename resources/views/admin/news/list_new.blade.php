@extends('admin_layout')
@section('admin_content')
     <!-- Begin Page Content -->
     <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800 text-center">Danh sách tin tức</h1>
           

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>Tiêu đề</th>
                                    <th>Hình ảnh</th>
                                    <th>Người tạo</th>
                                    <th>Ngày tạo</th>
                                    <th>Quản lý</th>
                                </tr>
                            </thead>
                           
                            <tbody>
                                @foreach ($news as $item => $list_news)
                                <tr>
                                    <td>{{$list_news->title_new}}</td>
                                    <td><img width="100" height="80" src="{{URL::to('public/storage/'.$list_news->image_new)}}" alt="image"></td>
                                    <td>{{$list_news->admin['name']}}</td>
                                    <td>{{$list_news->created_at}}</td>
                                    <td><a href="{{URL::to('edit-news/'.$list_news->id_news)}}">Sửa</a> / <a href="{{URL::to('delete-news/'.$list_news->id_news)}}">Xóa</a></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        
    </div>
    <!-- /.container-fluid -->
@endsection
