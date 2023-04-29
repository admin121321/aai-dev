<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;

class Ticket extends Model
{
    // use HasFactory;
    protected $fillable = [
        'user_id', 'category_id', 'ticket_id', 'title', 'priority', 'message', 'status'
    ];
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public static function getCustom()
    {
        // $panjul =  DB::table('categories as c')
        //            ->join('users as uc', 'uc.id', '=', 'c.id_useri')
        //            ->get();

        $records = DB::table('tickets as t')
                     ->join('users as u', 'u.id', '=','t.user_id')
                     ->join('categories as c', 'c.id', '=' ,'t.category_id')
                    //  ->join('users as uc', 'c.id_useri', '=', 'uc.id')
                     ->select('u.name', 'c.id_useri', 'c.nama', 't.ticket_id', 't.title', 't.priority', 't.message', 't.status', 't.created_at')
                     ->get();

        return $records;
    }
}
