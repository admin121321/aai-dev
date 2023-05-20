<?php

namespace App\Http\Controllers;
use App\Models\Iklans; 
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DataTables;
use Validator;
use Auth;
use File;
use DB;

class IklansController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Iklans::join('users', 'users.id', '=' ,'iklans.id_user')
            ->select('iklans.*', 'users.name') 
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
 
        return view('iklans.index');
    }
 
    public function store(Request $request)
    {
        $rules = array(
            'id_user'             =>  'required',
            'judul'               =>  'required',
            'mulai_pemasangan'    =>  'required',
            'akhir_pemasangan'    =>  'required',
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
            $request->gambar->move(public_path('images-iklan'), $form_data['gambar']);
            
            Iklans::create($form_data);
 
            return response()->json(['success' => 'Data Added successfully.']);
        }
    }
 
    public function edit($id)
    {
        if(request()->ajax())
        {
            $data = Iklans::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }
 
    public function update(Request $request, Iklans $iklans)
    {
        $rules = array(
            'id_user'             =>  'required',
            'judul'               =>  'required',
            'mulai_pemasangan'    =>  'required',
            'akhir_pemasangan'    =>  'required',
            // 'gambar'              =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'deskripsi'           =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
        $form_data = Iklans::find($request->hidden_id);
        $fileName  = public_path('images-iklan/').$form_data->gambar;
        $currentImage = $iklans->gambar;
        
        if ($request->gambar != $currentImage) {
            $file = $request->file('gambar');
            $fileName_new = date('YmdHis') . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('images-iklan/'), $fileName_new);
            $halamanImage = public_path('images-iklan/').$currentImage;
            $form_data = [
                'id_user'             =>  $request->id_user,
                'judul'               =>  $request->judul,
                'mulai_pemasangan'    =>  $request->mulai_pemasangan,
                'akhir_pemasangan'    =>  $request->akhir_pemasangan,
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
                'mulai_pemasangan'    =>  $request->mulai_pemasangan,
                'akhir_pemasangan'    =>  $request->akhir_pemasangan,
                'deskripsi'           =>  $request->deskripsi,
            ];
        }
 
        Iklans::whereId($request->hidden_id)->update($form_data);
 
        return response()->json([
            'success' => 'Data is successfully updated',
            
        ]);
    }
 
    public function destroy($id)
    {
        // hapus file
		$data = Iklans::where('id',$id)->first();
		File::delete('images-iklan/'.$data->gambar);

        Iklans::where('id',$id)->delete();
		return redirect()->back();
        
    }
}
