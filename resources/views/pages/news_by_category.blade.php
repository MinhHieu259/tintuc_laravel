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
	<div class="container">
       <br>
       <br>
       <br>
        <div class="row">
            
            
            <div class="col-sm-12 p-r-25 p-r-15-sr991">
                <!-- Item post -->	
                
                @foreach ($news_cate as $item => $news_by_category)
               
                <div class="flex-wr-sb-s m-b-30">
                    <a href="{{URL::to('detail-news/'.$news_by_category->id_news)}}" class="size-w-1 wrap-pic-w hov1 trans-03">
                        <img src="{{URL::to('public/storage/'.$news_by_category->image_new)}}" alt="IMG">
                    </a>

                    <div class="size-w-2">
                        <h5 class="p-b-5">
                            <a href="{{URL::to('detail-news/'.$news_by_category->id_news)}}" class="f1-s-5 cl3 hov-cl10 trans-03">
                                {{$news_by_category->title_new}}
                            </a>
                        </h5>

                        <span class="cl8">
                            <a href="#" class="f1-s-6 cl8 hov-cl10 trans-03">
                                {{$news_by_category->category['name_category']}}
                            </a>

                            <span class="f1-s-3 m-rl-3">
                                -
                            </span>

                            <span class="f1-s-3">
                                {{$news_by_category->created_at}}
                            </span>
                        </span>
                    </div>
                </div>
                
                @endforeach
                
            </div>
            
        </div>
    </div>

	
@endsection