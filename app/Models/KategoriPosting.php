<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriPosting extends Model
{
    // use HasFactory;
    protected $table = 'kategori_postings';
    protected $fillable = [
        'nama_kategori',
    ];

    public function Posting()
    {
        return $this->hasMany(Posting::class);
    }
    public function User()
    {
        return $this->belongsTo(User::class);
    }
}
