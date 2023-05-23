<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use DataTables;
use Validator;
use Auth;
use File;
use DB;

class UserController extends Controller
{
    //
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select('users.*')->latest()->get();
            return Datatables::of($data)->addIndexColumn()
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit</button>';
                    $button .= '   <button type="button" name="edit" id="'.$data->id.'" class="delete btn btn-danger btn-sm"> <i class="bi bi-backspace-reverse-fill"></i> Delete</button>';
                    return $button;
                })
                ->make(true);
        }
 
        return view('users.index');
    }
 
    public function store(Request $request)
    {
        $this->validate($request,[

        ]);

        $foto = $request->file('foto');

        if ($foto == NULL){
        
            $form_data = array(
                    'nrk'        => $request->nrk,
                    'nip'        => $request->nip,
                    'no_ser_kar' => $request->no_ser_kar,
                    'name'       => strtoupper($request->name),
                    't_lahir'    => strtoupper($request->t_lahir),
                    'tgl_lahir'  => $request->tgl_lahir,
                    'j_k'        => strtoupper($request->j_k),
                    'pang'       => strtoupper($request->pang),
                    'gol'        => $request->gol,
                    'tmt_pang'   => $request->tmt_pang,
                    'ting'       => strtoupper($request->ting),
                    'tmt_ting'   => $request->tmt_ting,
                    'u_k'        => strtoupper($request->u_k),
                    'inst'       => strtoupper($request->inst),
                    'email'      => $request->email,
                    'password'   => Hash::make($request->password),
                    'level'      => strtoupper($request->level),
                    'id_anggota' => $request->id_anggota,
                    'verifikasi' => $request->verifikasi,
                    'is_admin'   => $request->is_admin,
                    'kategori'   => $request->kategori,
                    'no_telpn'   => $request->no_telpn,
            );

        } else {
            $nama_file = date('YmdHis').'.'.$foto->getClientOriginalName();
            $tujuan_upload = 'images-foto';
            $foto->move($tujuan_upload,$nama_file);  
            
            $form_data = array(
                    'nrk'        => $request->nrk,
                    'nip'        => $request->nip,
                    'no_ser_kar' => $request->no_ser_kar,
                    'name'       => strtoupper($request->name),
                    't_lahir'    => strtoupper($request->t_lahir),
                    'tgl_lahir'  => $request->tgl_lahir,
                    'j_k'        => strtoupper($request->j_k),
                    'pang'       => strtoupper($request->pang),
                    'gol'        => $request->gol,
                    'tmt_pang'   => $request->tmt_pang,
                    'ting'       => strtoupper($request->ting),
                    'tmt_ting'   => $request->tmt_ting,
                    'u_k'        => strtoupper($request->u_k),
                    'inst'       => strtoupper($request->inst),
                    'foto'       => $nama_file,
                    'email'      => $request->email,
                    'password'   => Hash::make($request->password),
                    'level'      => strtoupper($request->level),
                    'id_anggota' => $request->id_anggota,
                    'verifikasi' => $request->verifikasi,
                    'is_admin'   => $request->is_admin,
                    'kategori'   =>  $request->kategori,
                    'no_telpn'   =>  $request->no_telpn,
            );
        }

        User::create($form_data);
        return response()->json(['success' => 'Data Added successfully.']);

    }

    // public function store(Request $request)
    // {
    //     $rules = array(
    //         // 'id_user'             =>  'required',
    //         // 'judul'               =>  'required',
    //         // 'gambar'              =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    //         // 'deskripsi'           =>  'required'
    //     );
 
    //     $error = Validator::make($request->all(), $rules);
 
    //     if($error->fails())
    //     {
    //         return response()->json(['errors' => $error->errors()->all()]);
    //     }else {
    //         $form_data = $request->all();
    //         $form_data['foto'] = date('YmdHis').'.'.$request->foto->getClientOriginalName();
    //         $request->foto->move(public_path('images-foto'), $form_data['foto']);
            
    //         User::create($form_data);
 
    //         return response()->json(['success' => 'Data Added successfully.']);
    //     }
    // }
 
 
    public function edit($id)
    {
        if(request()->ajax())
        {
            $data = User::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }
 
    public function update(Request $request)
    {
        $rules = array(
            'name'        =>  'required',
            'email'         =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
 
        $form_data = array(
                'nrk'          => $request->nrk,
                'nip'          => $request->nip,
                'no_ser_kar'   => $request->no_ser_kar,
                't_lahir'      => strtoupper($request->t_lahir),
                'tgl_lahir'    => $request->tgl_lahir,
                'j_k'          => strtoupper($request->j_k),
                'pang'         => strtoupper($request->pang),
                'gol'          => $request->gol,
                'tmt_pang'     => $request->tmt_pang,
                'ting'         => strtoupper($request->ting),
                'tmt_ting'     => $request->tmt_ting,
                'u_k'          => strtoupper($request->u_k),
                'inst'         => strtoupper($request->inst),
                'name'         => $request->name,
                'email'        => $request->email,
                // 'password'     => $postpass,
                'level'        => strtoupper($request->level),
                // 'foto'         => $request->foto,
                'id_anggota'   => $request->id_anggota,
                'verifikasi'   => $request->verifikasi,
                'is_admin'     => $request->is_admin
        );
 
        User::whereId($request->hidden_id)->update($form_data);
 
        return response()->json(['success' => 'Data is successfully updated']);
    }
 
    public function destroy($id)
    {
        $data = User::where('id',$id)->first();
		File::delete('images-foto/'.$data->foto);

        $data = User::findOrFail($id);
        $data->delete();
    }
}
