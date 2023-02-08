<?php

namespace App\Http\Controllers;
use App\Models\Halamans; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DataTables;
use Validator;
use DB;

class HalamansController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Halamans::select('id','id_user', 'judul', 'gambar', 'deskripsi')->get();
            return Datatables::of($data)->addIndexColumn()
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit</button>';
                    $button .= '   <button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm"> <i class="bi bi-backspace-reverse-fill"></i> Delete</button>';
                    return $button;
                })
                ->make(true);
                // $data = DB::table('halamans')->get();
                // echo $data;
        }
 
        return view('halamans.index');
    }
 
    public function store(Request $request)
    {
        $rules = array(
            'id_user'             =>  'required',
            'judul'               =>  'required',
            'gambar'              =>  'required',
            'deskripsi'           =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
 
        $form_data = array(
            // 'id_user'  =>  $request-> Auth::user()->id,
            'id_user'             =>  $request->id_user,
            'judul'               =>  $request->judul,
            'gambar'              =>  $request->gambar,
            'deskripsi'           =>  $request->deskripsi,
        );
 
        Halamans::create($form_data);
 
        return response()->json(['success' => 'Data Added successfully.']);
    }
 
    public function edit($id)
    {
        if(request()->ajax())
        {
            $data = Halamans::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }
 
    public function update(Request $request)
    {
        $rules = array(
            'id_user'             =>  'required',
            'judul'               =>  'required',
            'gambar'              =>  'required',
            'deskripsi'           =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
 
        $form_data = array(
            'id_user'             =>  $request->id_user,
            'judul'               =>  $request->judul,
            'gambar'              =>  $request->gambar,
            'deskripsi'           =>  $request->deskripsi,
        );
 
        Halamans::whereId($request->hidden_id)->update($form_data);
 
        return response()->json([
            'success' => 'Data is successfully updated',
            
        ]);
        return response()
            ->json(['success' => 'Data is successfully updated',])
            ->back()->withInput();
        // return Redirect::back()->with('message','Operation Successful !');
    }
 
    public function destroy($id)
    {
        $data = Halamans::findOrFail($id);
        $data->delete();
        return response()->json(['success' => 'Data is successfully Delete']);
    }
}
