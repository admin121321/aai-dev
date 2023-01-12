<?php

namespace App\Http\Controllers;
use App\Models\KategoriPosting; 
use Illuminate\Http\Request;

class KategoriPostingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        // $KategoriPostings= KategoriPosting::paginate(10);
        // return view('kategoriPostings.index', compact('KategoriPostings'));
        return view('kategoripostings.index');
    }

     //View Cari
     // Fetch records
     public function getKategoripostings(Request $request)
     {
        $KategoriPostings = KategoriPosting::all();
        if($request->keyword != ''){
        $KategoriPostings = KategoriPosting::where('nama_kategori','LIKE','%'.$request->keyword.'%')->get();
        }
      return response()->json([
         'KategoriPostings' => $KategoriPostings
      ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
