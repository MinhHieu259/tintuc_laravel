<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
Session::start();
class CategoryController extends Controller
{
    public function add_category()
    {
        return view('admin.category.add_category');
    }

    public function list_category()
    {
        $category = Category::all();
        return view('admin.category.list_category')->with(compact('category'));
    }

    public function insert_category()
    {
        $data = request()->validate([
            'name_category' => 'required',
            'image_category' => 'required|image'
        ]);
        $imagePath = request('image_category')->store('uploads', 'public');
        $admin_id= Session::get('admin_id');

        $category = new Category();
        $category->name_category = $data['name_category'];
        $category->image_category = $imagePath;
        $category->createdby = $admin_id;

        $category->save();
        return redirect('list-category')->with('success', 'Insert category success');

    }
    public function edit_category($id_category)
    {
        $category = Category::find($id_category);
        return view('admin.category.edit_category')->with(compact('category'));
    }

    public function update_category($category_id)
    {
        $data = request()->validate([
            'name_category' => 'required'
        ]);

        $category =  Category::find($category_id);
        $image = request('image_category');

        if($image){
            $destinationPath = 'public/storage/'.$category->image_category;
            if(file_exists($destinationPath)){
                unlink($destinationPath);
            }
            $imagePath = request('image_category')->store('uploads', 'public');
            $category->name_category = $data['name_category'];
            $category->image_category = $imagePath;
           
        }else{
            $category->name_category = $data['name_category'];
        }
        $category->save();
        return redirect('list-category')->with('success', 'Update category success');
    }
    public function delete_category($id_category)
    {
        $category = Category::find($id_category);
        $destinationPath = 'public/storage/'.$category->image_category;
        if(file_exists($destinationPath)){
            unlink($destinationPath);
        }
        $category->delete();
        return redirect('list-category')->with('success', 'Delete category success');
    }
}
