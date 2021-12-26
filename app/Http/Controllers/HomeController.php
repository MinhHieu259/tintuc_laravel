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
        $tintucFeature = News::where('id_category',1)->first();
        $doanhoiFeature = News::where('id_category',2)->first();
        $hoctapbacFeature = News::where('id_category',3)->first();
        $tuyentruyenFeature = News::where('id_category',4)->first();
        $Category = Category::all();
        $newByCategory = News::all();
        $featuredNew = News::where('featured','=','1')->get();
        return view('pages.home',)->with(compact('tintucFeature','doanhoiFeature','hoctapbacFeature','tuyentruyenFeature','newByCategory','Category', 'featuredNew'));
    }
}
