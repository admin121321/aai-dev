<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Iklans extends Model
{
    // use HasFactory;
    protected $table = 'iklans';
    protected $fillable = [
        'id_user', 
        'judul', 
        'mulai_pemasangan',
        'akhir_pemasangan',
        'gambar',
        'link_media', 
        'deskripsi'
    ];
}
