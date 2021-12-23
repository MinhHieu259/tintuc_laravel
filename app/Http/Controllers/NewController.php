<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewController extends Controller
{
    public function add_news()
    {
        return view('admin.news.add_new');
    }
    public function list_news()
    {
        return view('admin.news.list_new');
    }
}
