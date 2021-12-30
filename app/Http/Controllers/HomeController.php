<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        $tintucFeature = News::where('id_category',1)->orderBy('id_news','DESC')->first();
        $doanhoiFeature = News::where('id_category',2)->orderBy('id_news','DESC')->first();
        $hoctapbacFeature = News::where('id_category',3)->orderBy('id_news','DESC')->first();
        $tuyentruyenFeature = News::where('id_category',4)->orderBy('id_news','DESC')->first();
        $Category = Category::all();
        $newByCategory = News::orderBy('id_news','DESC')->get();
        $featuredNew = News::where('featured','=','1')->get();
        return view('pages.home',)->with(compact('tintucFeature','doanhoiFeature','hoctapbacFeature','tuyentruyenFeature','newByCategory','Category', 'featuredNew'));
    }
}
