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
							<img src="{{URL::to('public/storage/uploads/logo2.png')}}" alt="LOGO">
						</a>

						<ul class="main-menu">
							<li class="main-menu-active">
								<a href="{{URL::to('trang-chu')}}">Trang chủ</a>
								
							</li>

							<li class="mega-menu-item">
								<a href="category-01.html">Tin tức</a>
								<ul class="sub-menu">
									@foreach ($Category as $item =>$list_category)
										
									<li><a href="{{URL::to('list-news-category/'.$list_category->id_category)}}">{{$list_category->name_category}}</a></li>
									@endforeach
								</ul>
								
							</li>

							

							<li class="mega-menu-item">
								<a href="{{URL::to('vanban')}}">Văn bản</a>
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
		<div class="bg0 flex-wr-sb-c p-rl-20 p-tb-8">
			

			<div class="pos-relative size-a-2 bo-1-rad-22 of-hidden bocl11 m-tb-6">
				<input class="f1-s-1 cl6 plh9 s-full p-l-25 p-r-45" type="text" name="search" placeholder="Search">
				<button class="flex-c-c size-a-1 ab-t-r fs-20 cl2 hov-cl10 trans-03">
					<i class="zmdi zmdi-search"></i>
				</button>
			</div>
		</div>
	</div>
		
	<!-- Feature post -->
	<section class="bg0">
		<div class="container">
			<div class="row m-rl--1">
				<div class="col-md-6 p-rl-1 p-b-2">
					<div class="bg-img1 size-a-3 how1 pos-relative" style="background-image: url({{URL::to('public/storage/'.$tintucFeature->image_new)}});">
						<a href="{{URL::to('detail-news/'.$tintucFeature->id_news)}}" class="dis-block how1-child1 trans-03"></a>

						<div class="flex-col-e-s s-full p-rl-25 p-tb-20">
							<a href="#" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
								{{$tintucFeature->category['name_category']}}
							</a>

							<h3 class="how1-child2 m-t-14 m-b-10">
								<a href="blog-detail-01.html" class="how-txt1 size-a-6 f1-l-1 cl0 hov-cl10 trans-03">
									{{$tintucFeature->title_new}}
								</a>
							</h3>

							<span class="how1-child2">
								<span class="f1-s-4 cl11">
									{{$tintucFeature->admin['name']}}
								</span>

								<span class="f1-s-3 cl11 m-rl-3">
									-
								</span>

								<span class="f1-s-3 cl11">
									{{$tintucFeature->created_at}}
								</span>
							</span>
						</div>
					</div>
				</div>

				<div class="col-md-6 p-rl-1">
					<div class="row m-rl--1">
						<div class="col-12 p-rl-1 p-b-2">
							<div class="bg-img1 size-a-4 how1 pos-relative" style="background-image: url({{URL::to('public/storage/'.$doanhoiFeature->image_new)}});">
								<a href="{{URL::to('detail-news/'.$doanhoiFeature->id_news)}}" class="dis-block how1-child1 trans-03"></a>

								<div class="flex-col-e-s s-full p-rl-25 p-tb-24">
									<a href="#" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
										{{$doanhoiFeature->category['name_category']}}
									</a>

									<h3 class="how1-child2 m-t-14">
										<a href="blog-detail-01.html" class="how-txt1 size-a-7 f1-l-2 cl0 hov-cl10 trans-03">
											{{$doanhoiFeature->title_new}}
										</a>
									</h3>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-rl-1 p-b-2">
							<div class="bg-img1 size-a-5 how1 pos-relative" style="background-image: url({{URL::to('public/storage/'.$hoctapbacFeature->image_new)}});">
								<a href="{{URL::to('detail-news/'.$hoctapbacFeature->id_news)}}" class="dis-block how1-child1 trans-03"></a>

								<div class="flex-col-e-s s-full p-rl-25 p-tb-20">
									<a href="#" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
										{{$hoctapbacFeature->category['name_category']}}
									</a>

									<h3 class="how1-child2 m-t-14">
										<a href="blog-detail-01.html" class="how-txt1 size-h-1 f1-m-1 cl0 hov-cl10 trans-03">
											{{$hoctapbacFeature->title_new}}
										</a>
									</h3>
								</div>
							</div>
						</div>

						<div class="col-sm-6 p-rl-1 p-b-2">
							<div class="bg-img1 size-a-5 how1 pos-relative" style="background-image: url({{URL::to('public/storage/'.$tuyentruyenFeature->image_new)}});">
								<a href="{{URL::to('detail-news/'.$tuyentruyenFeature->id_news)}}" class="dis-block how1-child1 trans-03"></a>

								<div class="flex-col-e-s s-full p-rl-25 p-tb-20">
									<a href="#" class="dis-block how1-child2 f1-s-2 cl0 bo-all-1 bocl0 hov-btn1 trans-03 p-rl-5 p-t-2">
										{{$tuyentruyenFeature->category['name_category']}}
									</a>

									<h3 class="how1-child2 m-t-14">
										<a href="blog-detail-01.html" class="how-txt1 size-h-1 f1-m-1 cl0 hov-cl10 trans-03">
											{{$tuyentruyenFeature->title_new}}
										</a>
									</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Post -->
	<section class="bg0 p-t-70">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 col-lg-8">
					<div class="p-b-20">
						<!-- Entertainment -->
						@foreach ($Category as $item => $new_cate)
							
						
						<div class="tab01 p-b-20">
							<div class="tab01-head how2 how2-cl1 bocl12 flex-s-c m-r-10 m-r-0-sr991">
								<!-- Brand tab -->
								<h3 class="f1-m-2 cl12 tab01-title">
									{{$new_cate->name_category}}
								</h3>

								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="nav-item">
										<a class="nav-link active" data-toggle="tab" href="#tab1-1" role="tab"></a>
									</li>

								</ul>

								<!--  -->
								<a href="category-01.html" class="tab01-link f1-s-1 cl9 hov-cl10 trans-03">
									Xem tất cả
									<i class="fs-12 m-l-5 fa fa-caret-right"></i>
								</a>
							</div>
								

							<!-- Tab panes -->
							<div class="tab-content p-t-35">
								<!-- - -->
								<div class="tab-pane fade show active" id="tab1-1" role="tabpanel">
									<div class="row">

										<div class="col-sm-12 p-r-25 p-r-15-sr991">
											<!-- Item post -->	
											
											@foreach ($newByCategory as $item => $news_by_category)
											@if ($news_by_category->id_category == $new_cate->id_category)
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
											@endif
											@endforeach
											
										</div>
										
									</div>
								</div>

								<!-- - -->
								

							</div>
						</div>
						@endforeach
					</div>
				</div>

				<div class="col-md-10 col-lg-4">
					<div class="p-l-10 p-rl-0-sr991 p-b-20">
						<!--  -->
						<div>
							<div class="how2 how2-cl4 flex-s-c">
								<h3 class="f1-m-2 cl3 tab01-title">
									Nổi bật
								</h3>
							</div>

							<ul class="p-t-35">
								@php
									$i=0;
								@endphp
								@foreach ($featuredNew as $item => $featuredNews)
									@php
										$i++;
									@endphp
					
								<li class="flex-wr-sb-s p-b-22">
									<div class="size-a-8 flex-c-c borad-3 size-a-8 bg9 f1-m-4 cl0 m-b-6">
										{{$i}}
									</div>

									<a href="{{URL::to('detail-news/'.$featuredNews->id_news)}}" class="size-w-3 f1-s-7 cl3 hov-cl10 trans-03">
										{{$featuredNews->title_new}}
									</a>
								</li>
								@endforeach
							
							</ul>
						</div>

						
						
						<!--  -->
						<div class="p-t-50">
							<div class="how2 how2-cl4 flex-s-c">
								<h3 class="f1-m-2 cl3 tab01-title">
									Stay Connected
								</h3>
							</div>

							<ul class="p-t-35">
								<li class="flex-wr-sb-c p-b-20">
									<a href="#" class="size-a-8 flex-c-c borad-3 size-a-8 bg-facebook fs-16 cl0 hov-cl0">
										<span class="fab fa-facebook-f"></span>
									</a>

									<div class="size-w-3 flex-wr-sb-c">
										<span class="f1-s-8 cl3 p-r-20">
											6879 Fans
										</span>

										<a href="#" class="f1-s-9 text-uppercase cl3 hov-cl10 trans-03">
											Like
										</a>
									</div>
								</li>

								<li class="flex-wr-sb-c p-b-20">
									<a href="#" class="size-a-8 flex-c-c borad-3 size-a-8 bg-twitter fs-16 cl0 hov-cl0">
										<span class="fab fa-twitter"></span>
									</a>

									<div class="size-w-3 flex-wr-sb-c">
										<span class="f1-s-8 cl3 p-r-20">
											568 Followers
										</span>

										<a href="#" class="f1-s-9 text-uppercase cl3 hov-cl10 trans-03">
											Follow
										</a>
									</div>
								</li>

								<li class="flex-wr-sb-c p-b-20">
									<a href="#" class="size-a-8 flex-c-c borad-3 size-a-8 bg-youtube fs-16 cl0 hov-cl0">
										<span class="fab fa-youtube"></span>
									</a>

									<div class="size-w-3 flex-wr-sb-c">
										<span class="f1-s-8 cl3 p-r-20">
											5039 Subscribers
										</span>

										<a href="#" class="f1-s-9 text-uppercase cl3 hov-cl10 trans-03">
											Subscribe
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Banner -->
	<div class="container">
		<div class="flex-c-c">
			<a href="#">
				<img class="max-w-full" src="images/banner-01.jpg" alt="IMG">
			</a>
		</div>
	</div>

	
@endsection