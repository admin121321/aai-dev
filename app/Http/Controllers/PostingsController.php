<?php

namespace App\Http\Controllers;
use App\Models\Posting;
use App\Models\User;
use App\Models\KategoriPosting;  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DataTables;
use Validator;
use Auth;
use File;
use PDF;

class PostingsController extends Controller
{
    //
    public function index(Request $request)
    {       
        if ($request->ajax()) {
            $data = Posting::join('users', 'users.id', '=' ,'postings.id_user')
                     ->join('kategori_postings', 'kategori_postings.id', '=', 'postings.id_kategori')
                     ->select('postings.*', 'users.name', 'kategori_postings.nama_kategori') 
                     ->get();
            // $data = Posting::with('User','KategoriPosting')->latest()->get();
            return Datatables::of($data)->addIndexColumn()
                ->addColumn('id_user', function($data){
                    return $data->name;
                })
                ->addColumn('id_kategori', function($data){
                    return $data->nama_kategori;
                })
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit</button>';
                    $button .= '   <button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm"> <i class="bi bi-backspace-reverse-fill"></i> Delete</button>';
                    return $button;
                })
                ->make(true);
                
             dd($data);

        }
        return view('Postings.index');
    }
 
    public function store(Request $request)
    {
        $rules = array(
            'id_user'     =>  'required',
            'id_kategori' =>  'required',
            'judul'       =>  'required',
            'gambar'      =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            // 'gambar'      =>  'required',
            'deskripsi'   =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }else{

            $form_data = $request->all();
            $form_data['gambar'] = time().'.'.$request->gambar->getClientOriginalExtension();
            $request->gambar->move(public_path('images'), $form_data['gambar']);

            Posting::create($form_data);
            return response()->json(['success' => 'Data Added successfully.']);
        }

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
                'gambar'      =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'deskripsi'   =>  'required'
            );
     
            $error = Validator::make($request->all(), $rules);
            
            if($error->fails())
            {
                return response()->json(['errors' => $error->errors()->all()]);
            }
            $fileName = '';
            $data = Posting::find($request->id);
            if ($request->hasFile('gambar')) {
                $file = $request->file('gambar');
                $fileName = time() . '.' . $file->getClientOriginalExtension();
                $file->storeAs('public/images', $fileName);
                if ($data->gambar) {
                    Storage::delete('public/images/' . $data->gambar);
                }
            } else {
                $fileName = $request->gambar;
            }
    
            $form_data = [
                'id_user'     =>  $request->id_user,
                'id_kategori' =>  strtoupper($request->id_kategori),
                'judul'       =>  $request->judul,
                'deskripsi'   =>  $request->deskripsi, 
                'gambar'      =>  $fileName
            ];
    
            $data->update($form_data);
            return response()->json([
                'status' => 200,
            ]);
 
        // $form_data = array(
        //     'id_user'     =>  $request->id_user,
        //     'id_kategori' =>  strtoupper($request->id_kategori),
        //     'judul'       =>  $request->judul,
        //     'gambar'      =>  $request->gambar,
        //     'deskripsi'   =>  $request->deskripsi,
        // );
 
        // Posting::whereId($request->hidden_id)->update($form_data);
 
        // return response()->json(['success' => 'Data is successfully updated']);
        
          
    }
 
    public function destroy($id)
    {
        $data = Posting::findOrFail($id);
        $data->delete();
    }
}
