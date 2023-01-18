<?php

namespace App\Http\Controllers;
use App\Models\Posting;
use App\Models\KategoriPosting;  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DataTables;
use Validator;

class PostingsController extends Controller
{
    //
    public function index(Request $request, KategoriPosting $KategoriPosting)
    {
        if ($request->ajax()) {
            $data = Posting::select('id','id_user', 'id_kategori', 'judul', 'gambar', 'deskripsi')->get();
            return Datatables::of($data)->addIndexColumn()
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit</button>';
                    $button .= '   <button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm"> <i class="bi bi-backspace-reverse-fill"></i> Delete</button>';
                    return $button;
                })
                ->make(true);
        }
        return view('Postings.index');
    }
 
    public function store(Request $request)
    {
        $rules = array(
            'id_user'     =>  'required',
            'id_kategori' =>  'required',
            'judul'       =>  'required',
            'gambar'      =>  'required',
            'deskripsi'   =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
        $KategoriPostings = KategoriPosting::all();
        $form_data = array(
            // 'id_user'  =>  $request-> Auth::user()->id,
            'id_user'     =>  $request->id_user,
            'id_kategori' =>  strtoupper($request->id_kategori),
            'judul'       =>  $request->judul,
            'gambar'      =>  $request->gambar,
            'deskripsi'   =>  $request->deskripsi,
        );
 
        Posting::create($form_data);
 
        return response()->json(['success' => 'Data Added successfully.']);
    }
 
    public function edit($id)
    {
        if(request()->ajax())
        {
            $data = Posting::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }
 
    public function update(Request $request)
    {
        $rules = array(
            'id_user'     =>  'required',
            'id_kategori' =>  'required',
            'judul'       =>  'required',
            'gambar'      =>  'required',
            'deskripsi'   =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
 
        $form_data = array(
            'id_user'     =>  $request->id_user,
            'id_kategori' =>  $request->id_kategori,
            'judul'       =>  $request->judul,
            'gambar'      =>  $request->gambar,
            'deskripsi'   =>  $request->deskripsi,
        );
 
        Posting::whereId($request->hidden_id)->update($form_data);
 
        return response()->json(['success' => 'Data is successfully updated']);
    }
 
    public function destroy($id)
    {
        $data = Posting::findOrFail($id);
        $data->delete();
    }
}
