<?php

namespace App\Http\Controllers;
use App\Models\Posting;
use App\Models\User;
use App\Models\KategoriPosting;  
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
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
        return view('postings.index');
    }
 
    public function store(Request $request)
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
        }else{

            $form_data = $request->all();
            $form_data['gambar'] = date('YmdHis').'.'.$request->gambar->getClientOriginalExtension();
            $request->gambar->move(public_path('images'), $form_data['gambar']);

            Posting::create($form_data);
            return response()->json(['success' => 'Data Added successfully.']);
        }

    }

    public function berita($id)
    {
        if(request()->ajax())
        {
            $postings = Posting::findOrFail($id);
            return view('frontends.berita-index', compact('postings'));
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

    public function update(Request $request, Posting $posting)
    {
        $rules = array(
            'id_user'     =>  'required',
            'id_kategori' =>  'required',
            'judul'       =>  'required',
            // 'gambar'      =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'deskripsi'   =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
        
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }        
        
        $form_data = Posting::find($request->hidden_id);
        $fileName  = public_path('images/').$form_data->gambar;
        $currentImage = $posting->gambar;
        // $fileName = '';
        if ($request->gambar != $currentImage) {
            $file = $request->file('gambar');
            $fileName_new = date('YmdHis') . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('images/'), $fileName_new);
            // Posting::make($file)->resize(250, 205)->save( public_path('images/' . $filename_new ) );
            $postingImage = public_path('images/').$currentImage;
            $form_data = [
                'id_user'     =>  $request->id_user,
                'id_kategori' =>  strtoupper($request->id_kategori),
                'judul'       =>  $request->judul,
                'deskripsi'   =>  $request->deskripsi, 
                'gambar'      =>  $fileName_new
            ];
            File::delete($fileName);

            if(file_exists($postingImage)){
                
                // File::delete($fileName);
                @unlink($postingImage);
                
            }

        } else {
            // $fileName = $request->gambar;
            $form_data = [
            'id_user'     =>  $request->id_user,
            'id_kategori' =>  strtoupper($request->id_kategori),
            'judul'       =>  $request->judul,
            'deskripsi'   =>  $request->deskripsi,
            ];
        }

        Posting::whereId($request->hidden_id)->update($form_data);
        return response()->json(['success' => 'Data is successfully updated']);  
        
    }

    public function destroy($id)
    {
        // hapus file
		$data = Posting::where('id',$id)->first();
		File::delete('images/'.$data->gambar);
 
		// hapus data
		Posting::where('id',$id)->delete();
 
		return redirect()->back();

        // $data = Posting::findOrFail($id);
        // $data->delete();
    }
}
