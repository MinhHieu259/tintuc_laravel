<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $table = "tbl_document";
    protected $primaryKey = "id_document";
    protected $fillable = ['name_document', 'file', 'admin_id'];
    public function admin()
    {
        return $this->belongsTo('App\Models\Admin', 'admin_id');
    }
}
