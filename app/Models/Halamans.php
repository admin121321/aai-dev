<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Halamans extends Model
{
    // use HasFactory;
    protected $table = 'halamans';
    protected $fillable = [
        'id_user', 'judul', 'gambar', 'deskripsi'
    ];
}
