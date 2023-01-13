<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Posting extends Model
{
    // use HasFactory;
    protected $fillable = [
        'id_user', 'id_kategori', 'judul', 'deskripsi'
    ];
    public function KategoriPosting()
    {
        return $this->belongsTo(KategoriPosting::class);
    }
    public function User()
    {
        return $this->belongsTo(User::class);
    }
}
