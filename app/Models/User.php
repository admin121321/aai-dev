<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $table = 'users';
    protected $fillable = [
        'nrk', 
        'nip',
        'no_ser_kar',
        't_lahir',
        'tgl_lahir',
        'j_k',
        'pang',
        'gol',
        'tmt_pang',
        'ting',
        'tmt_ting',
        'u_k',
        'inst',
        'foto',
        'name',
        'email',
        'password',
        'level',
        'is_admin',
        'id_anggota',
        'verifikasi',
        'no_telpn',
        'kategori',
        'persetujuan',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function Posting()
    {
        return $this->hasMany(Posting::class);
    }
    public function KategoriPosting()
    {
        return $this->hasMany(KategoriPosting::class);
    }
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    public function tickets()
    {
        return $this->hasMany(Ticket::class);
    }
    public function category()
    {
        return $this->hasMany(Category::class);
    }
}
