<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    // use HasFactory;
    protected $table = 'categories';
    protected $fillable = ['id_useri','nama'];
    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
