<?php

namespace App\Http\Controllers;
use App\Models\Category; 
use App\Models\User; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DataTables;
use Validator;

class CategoriesController extends Controller
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
            $data = Category::join('users', 'users.id', '=' ,'categories.id_useri')
                    ->select('categories.*', 'users.name') 
                    ->latest()
                    ->get();

            return Datatables::of($data)->addIndexColumn()
                ->addColumn('id_useri', function($data){
                    return $data->name;
                })
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit</button>';
                    $button .= '   <button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm"> <i class="bi bi-backspace-reverse-fill"></i> Delete</button>';
                    return $button;
                })
                ->make(true);
        }

        return view('kategoritickets.index');
   }

   public function store(Request $request)
   {
       $rules = array(
           'id_useri' =>  'required',
           'nama'    =>  'required'
       );

       $error = Validator::make($request->all(), $rules);

       if($error->fails())
       {
           return response()->json(['errors' => $error->errors()->all()]);
       }

    //    $form_data = $request->all();
       
       $form_data = array(
            'id_useri' =>  $request->id_useri,
            'nama'     =>  $request->nama,
        );
       
        Category::create($form_data);

       return response()->json(['success' => 'Data Added successfully.']);
   }

   public function edit($id)
   {
       if(request()->ajax())
       {
           $data = Category::findOrFail($id);
           return response()->json(['result' => $data]);
       }
   }

   public function update(Request $request)
   {
       $rules = array(
            'id_useri' =>  'required',
            'nama'    =>  'required'
       );

       $error = Validator::make($request->all(), $rules);

       if($error->fails())
       {
           return response()->json(['errors' => $error->errors()->all()]);
       }

       $form_data = array(
            'id_useri' =>  $request->id_useri,
            'nama'    =>  $request->nama,
       );

       Category::whereId($request->hidden_id)->update($form_data);

       return response()->json(['success' => 'Data is successfully updated']);
   }

   public function destroy($id)
   {
       $data = Category::findOrFail($id);
       $data->delete();
   }
}
