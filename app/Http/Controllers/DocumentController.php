<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


Session::start();
class DocumentController extends Controller
{
    public function add_document()
    {
        return view('admin.document.add_document');
    }
    public function insert_document(Request $request)
    {
        $document = new Document();

        $file = $request->file;
        $filename = time().'.'.$file->getClientOriginalExtension();
        $request->file->move('files',$filename);
        $document->file = $filename;
        $document->name_document = $request->name_file;
        $document->admin_id = Session::get('admin_id');
        $document->save();
        return redirect()->back();
    }

    public function show_vanban()
    {
        $Category = Category::all();
        $Document = Document::all();
        return view('pages.document')->with(compact('Category','Document'));
    }
    public function download(Request $request, $file)
    {
        return response()->download('files/'.$file);
    }
}
