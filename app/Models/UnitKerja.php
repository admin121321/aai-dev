<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UnitKerja extends Model
{
    // use HasFactory;
    protected $table = 'tbl_unitkerja';
	protected $fillable = ['u_k'];
}
