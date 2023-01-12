<?php

namespace App\Http\Controllers;
use App\Models\KategoriPosting; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DataTables;
use Validator;

class KategoriPostingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   //
   public function index(Request $request)
   {
       if ($request->ajax()) {
           $data = KategoriPosting::select('id','nama_kategori')->get();
           return Datatables::of($data)->addIndexColumn()
               ->addColumn('action', function($data){
                   $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit</button>';
                   $button .= '   <button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm"> <i class="bi bi-backspace-reverse-fill"></i> Delete</button>';
                   return $button;
               })
               ->make(true);
       }

       return view('kategoriPostings.index');
   }

   public function store(Request $request)
   {
       $rules = array(
           'nama_kategori' =>  'required'
       );

       $error = Validator::make($request->all(), $rules);

       if($error->fails())
       {
           return response()->json(['errors' => $error->errors()->all()]);
       }

       $form_data = array(
           'nama_kategori' =>  $request->nama_kategori
       );

       KategoriPosting::create($form_data);

       return response()->json(['success' => 'Data Added successfully.']);
   }

   public function edit($id)
   {
       if(request()->ajax())
       {
           $data = KategoriPosting::findOrFail($id);
           return response()->json(['result' => $data]);
       }
   }

   public function update(Request $request)
   {
       $rules = array(
           'nama_kategori'        =>  'required',
       );

       $error = Validator::make($request->all(), $rules);

       if($error->fails())
       {
           return response()->json(['errors' => $error->errors()->all()]);
       }

       $form_data = array(
           'nama_kategori'    =>  $request->nama_kategori
       );

       KategoriPosting::whereId($request->hidden_id)->update($form_data);

       return response()->json(['success' => 'Data is successfully updated']);
   }

   public function destroy($id)
   {
       $data = KategoriPosting::findOrFail($id);
       $data->delete();
   }
}
