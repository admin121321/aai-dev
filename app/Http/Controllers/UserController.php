<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use DataTables;
use Validator;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select('users.*')->get();
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
        $rules = array(
            'name'       =>  'required',
            'email'      =>  'required',
            'password'   =>  'required'
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
 
        $pass = $request->password;
        $postpass = Hash::make($pass);
 
        $form_data = array(
                'nrk'          => '0',
                'nip'          => '0',
                'no_ser_kar'   => '0',
                't_lahir'      => '0',
                'tgl_lahir'    => '0',
                'j_k'          => '0',
                'pang'         => '0',
                'gol'          => '0',
                'tmt_pang'     => '0',
                'ting'         => '0',
                'tmt_ting'     => '0',
                'u_k'          => '0',
                'inst'         => '0',
                'name'         => $request->name,
                'email'        => $request->email,
                'password'     => $postpass,
                'level'        => $request->level,
                'foto'         => '0',
                'id_anggota'   => '0',
                'verifikasi'   => '0',
                'is_admin'     => '0'
        );
 
        User::create($form_data);
 
        return response()->json(['success' => 'Data Added successfully.']);
    }
 
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
        $data = User::findOrFail($id);
        $data->delete();
    }
}
