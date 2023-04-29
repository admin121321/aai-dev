<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Ticket;
use App\Models\User;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data = DB::table('tickets as t')
                        ->join('users as u', 'u.id', '=','t.user_id')
                        ->join('categories as c', 'c.id', '=' ,'t.category_id')
                        ->select('u.name', 'c.id_useri', 'c.nama', 't.ticket_id', 't.title', 't.priority', 't.message', 't.status', 't.created_at')
                        ->get();
        return view('home', compact('data'));
    }
}
