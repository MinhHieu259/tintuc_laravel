@extends('admin_layout')
@section('admin_content')
     <!-- Begin Page Content -->
     <div class="container-fluid">
            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800 text-center">Danh sách tài liệu</h1>
           

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
                                    <th>Tên tài liệu</th>
                                    <th>File</th>
                                    <th>Người tạo</th>
                                    <th>Ngày tạo</th>
                                    <th>Quản lý</th>
                                </tr>
                            </thead>
                           
                            <tbody>
                                @foreach ($document as $item => $list_document)
                                <tr>
                                    <td>{{$list_document->name_document}}</td>
                                    <td>{{$list_document->file}}</td>
                                    <td>{{$list_document->admin['name']}}</td>
                                    <td>{{$list_document->created_at}}</td>
                                    <td><a href="{{URL::to('edit-document/'.$list_document->id_document)}}">Sửa</a> / <a href="{{URL::to('delete-document/'.$list_document->id_document)}}">Xóa</a></td>
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
