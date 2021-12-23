<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
Session::start();
class AdminController extends Controller
{
    public function AuthLogin()
    {
        $admin_id= Session::get('admin_id');
        if($admin_id){
            return Redirect::to('/Dashboard');
        }else{
            return Redirect::to('Admin')->send();
        }
    }
    public function index()
    {
       return view('admin_login');
    }
    public function show_dashboard()
    {
        $this->AuthLogin();
        return view('admin.dashboard');
    }
    public function dashboard(Request $request)
    {
        $username= $request->username;
        $password= $request->password;
        $result= DB::table('tbl_admin')->where('username',$username)->where('password',$password)->first();
        if($result){
            Session::put('admin_id',$result->admin_id);
           return Redirect::to('/Dashboard');
        }else{
            Session::put('message','Mật khẩu hoặc tài khoản bị sai');
            return Redirect::to('/Admin');
        }
    }
    public function logout()
    {
        $this->AuthLogin();
        Session::put('admin_id',null);
        return Redirect::to('/Admin');
    }
}
