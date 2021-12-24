<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $table = "tbl_news";
    protected $primaryKey = "id_news";
    protected $fillable = ['title_new', 'image_news', 'shortdesc', 'content', 'status', 'id_category', 
    'createdby'];
    public function admin()
    {
        return $this->belongsTo('App\Models\Admin', 'createdby');
    }
    public function category()
    {
        return $this->belongsTo('App\Models\Category', 'id_category');
    }
}
