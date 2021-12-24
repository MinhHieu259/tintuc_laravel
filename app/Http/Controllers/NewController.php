<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class NewController extends Controller
{
    public function add_news()
    {
        $category = Category::all();
        return view('admin.news.add_new')->with(compact('category'));
    }
    public function list_news()
    {
        $news = News::all();
        return view('admin.news.list_new')->with(compact('news'));
    }
    public function insert_news()
    {
        $data = request()->validate([
            'title_news' => 'required',
            'short_desc' => 'required',
            'content' => 'required',
            'status_news' => 'required',
            'category_news' => 'required',
            'image_news' => 'required|image'
        ]);
        $imagePath = request('image_news')->store('uploads', 'public');
        $admin_id= Session::get('admin_id');

        $news = new News();
        $news->title_new = $data['title_news'];
        $news->image_new =  $imagePath;
        $news->short_desc = $data['short_desc'];
        $news->content =  $data['content'];
        $news->status =  $data['status_news'];
        $news->id_category =  $data['category_news'];
        $news->createdby =  $admin_id;
        

        $news->save();
        return redirect('list-news')->with('success', 'Insert news success');

    }

    public function edit_news($id_news)
    {
        $category = Category::all();
        $news = News::find($id_news);
        $category_edit = News::find($id_news);
        return view('admin.news.edit_news')->with(compact('category_edit', 'category', 'news'));
    }

    public function update_news($news_id)
    {
        $data = request()->validate([
            'title_news' => 'required',
            'short_desc' => 'required',
            'content' => 'required',
            'status_news' => 'required',
            'category_news' => 'required',
        ]);

        $news =  News::find($news_id);
        $image = request('image_news');

        if($image){
            $destinationPath = 'public/storage/'.$news->image_new;
            if(file_exists($destinationPath)){
                unlink($destinationPath);
            }
            $imagePath = request('image_news')->store('uploads', 'public');
            $news->title_new = $data['title_news'];
            $news->image_new =  $imagePath;
            $news->short_desc = $data['short_desc'];
            $news->content =  $data['content'];
            $news->status =  $data['status_news'];
            $news->id_category =  $data['category_news'];
            //$news->createdby =  $admin_id;
           
        }else{
            $news->title_new = $data['title_news'];
            $news->short_desc = $data['short_desc'];
            $news->content =  $data['content'];
            $news->status =  $data['status_news'];
            $news->id_category =  $data['category_news'];
        }
        $news->save();
        return redirect('list-news')->with('success', 'Update news success');
    }
    public function delete_news($news_id)
    {
        $news = News::find($news_id);
        $destinationPath = 'public/storage/'.$news->image_new;
        if(file_exists($destinationPath)){
            unlink($destinationPath);
        }
        $news->delete();
        return redirect('list-news')->with('success', 'Delete news success');
    }
}
