<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = "tbl_category";
    protected $primaryKey = "id_category";
    protected $fillable = ['name_category', 'image_category', 'createdby'];
    public function admin()
    {
        return $this->belongsTo('App\Models\Admin', 'createdby');
    }
}
