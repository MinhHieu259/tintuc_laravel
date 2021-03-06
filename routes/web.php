<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//Người dùng
Route::get('/','HomeController@index');
Route::get('/trang-chu','HomeController@index');

// Admin
Route::get('/Admin','AdminController@index');
Route::get('/Dashboard','AdminController@show_dashboard');
Route::post('/admin-login','AdminController@dashboard');
Route::get('/logout','AdminController@logout');

// Category
Route::get('/add-category','CategoryController@add_category');
Route::get('/list-category','CategoryController@list_category');
Route::post('/insert-category','CategoryController@insert_category');
Route::get('/edit-category/{category_id}','CategoryController@edit_category');
Route::post('/update-category/{category_id}','CategoryController@update_category');
Route::get('/delete-category/{category_id}','CategoryController@delete_category');

// News
Route::get('/add-news','NewController@add_news');
Route::get('/list-news','NewController@list_news');
Route::post('/insert-news','NewController@insert_news');
Route::get('/edit-news/{news_id}','NewController@edit_news');
Route::post('/update-news/{news_id}','NewController@update_news');
Route::get('/delete-news/{news_id}','NewController@delete_news');
Route::get('/detail-news/{news_id}','NewController@detail_news');
Route::get('/list-news-category/{id_category}','NewController@list_news_category');

//Document
Route::get('/add-document','DocumentController@add_document');
Route::post('/insert-document','DocumentController@insert_document');
Route::get('/vanban','DocumentController@show_vanban');
Route::get('/download/{file}','DocumentController@download');
Route::get('/list-document','DocumentController@list_document');
Route::get('/edit-document/{document_id}','DocumentController@edit_document');
Route::post('/update-document/{document_id}','DocumentController@update_document');
Route::get('/delete-document/{document_id}','DocumentController@delete_document');
