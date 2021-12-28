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
        return redirect('list-document')->with('success', 'Insert document success');
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
    public function list_document()
    {
        $document = Document::all();
        return view('admin.document.list_document')->with(compact('document'));
    }
    public function edit_document($id_document)
    {
        $document = Document::find($id_document);
        return view('admin.document.edit_document')->with(compact('document'));
    }
    public function update_document($id_document)
    {
        $data = request()->validate([
            'name_file' => 'required'
        ]);

        $document =  Document::find($id_document);
        $file = request('file');

        if($file){
            $destinationPath = 'files/'.$document->file;
            if(file_exists($destinationPath)){
                unlink($destinationPath);
            }
           
            $filename = time().'.'.$file->getClientOriginalExtension();
            request('file')->move('files',$filename);
            $document->name_document = $data['name_file'];
            $document->file =  $filename;
           
           
        }else{
            $document->name_document = $data['name_file'];
            
        }
        $document->save();
        return redirect('list-document')->with('success', 'Update document success');

    }

    public function delete_document($id_document)
    {
        $document = Document::find($id_document);
        $destinationPath = 'files/'.$document->file;
        if(file_exists($destinationPath)){
            unlink($destinationPath);
        }
        $document->delete();
        return redirect('list-document')->with('success', 'Delete document success');
    }
}
