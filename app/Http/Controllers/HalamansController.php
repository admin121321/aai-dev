<?php

namespace App\Http\Controllers;
use App\Models\Halamans; 
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DataTables;
use Validator;
use Auth;
use File;
use DB;

class HalamansController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Halamans::join('users', 'users.id', '=' ,'halamans.id_user')
            ->select('halamans.*', 'users.name') 
            ->get();
            // $data = Halamans::select('id','id_user', 'judul', 'gambar', 'deskripsi')->get();
            return Datatables::of($data)->addIndexColumn()
                ->addColumn('id_user', function($data){
                    return $data->name;
                })
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
            'gambar'              =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'deskripsi'           =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }else {
            $form_data = $request->all();
            $form_data['gambar'] = date('YmdHis').'.'.$request->gambar->getClientOriginalExtension();
            $request->gambar->move(public_path('images'), $form_data['gambar']);
            
            Halamans::create($form_data);
 
            return response()->json(['success' => 'Data Added successfully.']);
        }
    }
 
    public function edit($id)
    {
        if(request()->ajax())
        {
            $data = Halamans::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }
 
    public function update(Request $request, Halamans $halamans)
    {
        $rules = array(
            'id_user'             =>  'required',
            'judul'               =>  'required',
            // 'gambar'              =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'deskripsi'           =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
        $form_data = Halamans::find($request->hidden_id);
        $fileName  = public_path('images/').$form_data->gambar;
        $currentImage = $halamans->gambar;
        
        if ($request->gambar != $currentImage) {
            $file = $request->file('gambar');
            $fileName_new = date('YmdHis') . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('images/'), $fileName_new);
            $halamanImage = public_path('images/').$currentImage;
            $form_data = [
                'id_user'             =>  $request->id_user,
                'judul'               =>  $request->judul,
                'deskripsi'           =>  $request->deskripsi, 
                'gambar'              =>  $fileName_new
            ];
            File::delete($fileName);

            if(file_exists($halamanImage)){
                
                // File::delete($fileName);
                @unlink($halamanImage);
                
            }

        } else {
            // $fileName = $request->gambar;
            $form_data = [
                'id_user'             =>  $request->id_user,
                'judul'               =>  $request->judul,
                'deskripsi'           =>  $request->deskripsi,
            ];
        }
 
        Halamans::whereId($request->hidden_id)->update($form_data);
 
        return response()->json([
            'success' => 'Data is successfully updated',
            
        ]);
        // return response()
        //     ->json(['success' => 'Data is successfully updated',])
        //     ->back()->withInput();
        // return Redirect::back()->with('message','Operation Successful !');
    }
 
    public function destroy($id)
    {
        $data = Halamans::findOrFail($id);
        $data->delete();
        return response()->json(['success' => 'Data is successfully Delete']);
    }
}
