<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Posting;
use App\Models\Halamans; 
use App\Models\Contact; 
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

    public function all(Request $request)
    {       
        $data = Posting::join('users', 'users.id', '=' ,'postings.id_user')
                ->join('kategori_postings', 'kategori_postings.id', '=', 'postings.id_kategori')
                ->select('postings.*', 'users.name', 'kategori_postings.nama_kategori') 
                ->latest()->paginate(3);
                // ->get();

        return view('layouts.welcome-menu-berita', compact('data'));
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

        $data = User::select('users.*')->paginate(10);
        return view('layouts.welcome-menu-keanggotaan',compact('data'));
    }

    public function showKontak()
    {

        return view('layouts.welcome-menu-kontak');
    }

    public function kirimKontak(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|digits:12|numeric',
            'subject' => 'required',
            'message' => 'required'
        ]);
  
        Contact::create($request->all());
        return redirect()->back()
                         ->with(['success' => 'Thank you for contact us. we will contact you shortly.']);
    }

    public function showPembinaanKearsipan()
    {

        return view('layouts.welcome-menu-pembinaan');
    }

    public function showPengelolaanArsipStatis()
    {

        return view('layouts.welcome-menu-arsip-statis');
    }

    public function showPengelolaanArsipDinamis()
    {

        return view('layouts.welcome-menu-arsip-dinamis');
    }

    public function showPenyelenggaraanKearsipan()
    {

        return view('layouts.welcome-menu-penyelengaraan');
    }

    public function showKonsul()
    {

        $data = Halamans::join('users', 'users.id', '=' ,'halamans.id_user')
            ->select('halamans.*', 'users.name') 
            ->get();
        return view('layouts.welcome-menu-konsul',compact('data'));
    }

    public function showTentang()
    {

        return view('layouts.welcome-menu-tentang');
    }
}
