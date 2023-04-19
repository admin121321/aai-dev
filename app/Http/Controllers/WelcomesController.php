<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Posting;
use App\Models\Halamans; 
use App\Models\KategoriPosting;  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DataTables;
use Validator;
use Auth;
use File;
use PDF;
use DB;

class WelcomesController extends Controller
{
    //
    public function index(Request $request)
    {       
        $data = Posting::join('users', 'users.id', '=' ,'postings.id_user')
                ->join('kategori_postings', 'kategori_postings.id', '=', 'postings.id_kategori')
                ->select('postings.*', 'users.name', 'kategori_postings.nama_kategori') 
                ->get();

        return view('welcome', compact('data'));
    }

    // public function show($judul)
    // {
    //     $postings = Posting::findOrFail($judul);
    //     return view('layouts.welcome-menu', compact('postings'));
    //     // return view('frontends.berita-index', compact('posting'));
    // }

    public function show($slug)
    {
        // $postings = Posting::where('judul', $slug)->first();

        $postings = Posting::join('users', 'users.id', '=' ,'postings.id_user')
        ->join('kategori_postings', 'kategori_postings.id', '=', 'postings.id_kategori')
        ->select('postings.*', 'users.name', 'kategori_postings.nama_kategori') 
        ->where('judul', $slug)->first();

        return view('layouts.welcome-menu')->with('postings', $postings);
    }

    public function showAdart()
    {

        $data = Halamans::join('users', 'users.id', '=' ,'halamans.id_user')
            ->select('halamans.*', 'users.name') 
            ->get();
        return view('layouts.welcome-menu-adart',compact('data'));
    }

    public function showKeanggotaan()
    {

        return view('layouts.welcome-menu-keanggotaan');
    }

    public function showKontak()
    {

        return view('layouts.welcome-menu-kontak');
    }

    public function showKonsul()
    {

        return view('layouts.welcome-menu-konsul');
    }

    public function showTentang()
    {

        return view('layouts.welcome-menu-tentang');
    }
}
