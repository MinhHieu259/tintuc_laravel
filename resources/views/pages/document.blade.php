@extends('layout')
	<!-- Header -->
	<header>
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->		
				<div class="logo-mobile">
					<a href="{{URL::to('/trang-chu')}}"><img src="{{URL::to('public/storage/uploads/logo2.png')}}" alt="IMG-LOGO"></a>
				</div>

				<!-- Button show menu -->
				<div class="btn-show-menu-mobile hamburger hamburger--squeeze m-r--8">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>

			
			
			<!--  -->
			<div class="wrap-logo container">
				<!-- Logo desktop -->		
				<div class="logo">
					<a href="{{URL::to('/trang-chu')}}"><img src="{{URL::to('public/storage/uploads/logo2.png')}}" alt="LOGO"></a>
				</div>	

				<!-- Banner -->
				<div class="banner-header">
					<a href="https://daotao1.ute.udn.vn/"><img src="{{URL::to('public/storage/uploads/headerx.png')}}" alt="IMG"></a>
				</div>
			</div>	
			
			<!--  -->
			<div class="wrap-main-nav">
				<div class="main-nav">
					<!-- Menu desktop -->
					<nav class="menu-desktop">
						<a class="logo-stick" href="index.html">
							<img src="images/icons/logo-01.png" alt="LOGO">
						</a>

						<ul class="main-menu">
							<li class="main-menu-active">
								<a href="{{URL::to('trang-chu')}}">Trang chủ</a>
								
							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">Tin tức</a>
								<ul class="sub-menu">
									@foreach ($Category as $item =>$list_category)
										
									<li><a href="index.html">{{$list_category->name_category}}</a></li>
									@endforeach
								</ul>
								
							</li>

							<li>
								<a href="index.html">Giới thiệu</a>
								<ul class="sub-menu">
									<li><a href="index.html">Giới thiệu chung</a></li>
									<li><a href="home-02.html">Cán bộ</a></li>
								</ul>
							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">Văn bản</a>
							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">Liên hệ</a>
							</li>
							<li>
								<a href="category-01.html">Đăng nhập</a>
							</li>

						</ul>
					</nav>
				</div>
			</div>	
		</div>
	</header>
@section('content')
    <!-- Headline -->
	<br><br>
	<div class="container">
        <table class="table table-bordered">
            <thead>
              <tr>
                <th scope="col">STT</th>
                <th scope="col">Tên văn bản</th>
                <th scope="col">Người tạo</th>
                <th scope="col">Ngày tạo</th>
                <th scope="col">File đính kèm</th>
              </tr>
            </thead>
            <tbody>
                @php
                    $i=0;
                @endphp
                @foreach ($Document as $item => $list_document)
                    @php
                        $i++;
                    @endphp
              <tr>
                <th scope="row">{{$i}}</th>
                <td>{{$list_document->name_document}}</td>
                <td>{{$list_document->admin['name']}}</td>
                <td>{{$list_document->created_at}}</td>
                <td><a href="{{URL::to('download/'.$list_document->file)}}">Tải tập tin</a></td>
              </tr>
              @endforeach
             
            </tbody>
          </table>
    </div>
    
    <br>
    <br>
    <br>
    <br>
    <br>
@endsection