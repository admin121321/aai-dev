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
                    $button .= '<button type="button" name="edit" id="'.$data->id.'" class="detailButton btn btn-success btn-sm"> <i class="bi bi-pencil-square"></i>Detail</button>';
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
 
    public function edit($id)
    {
        if(request()->ajax())
        {
            $data = User::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }
 
    public function update(Request $request, User $user)
    {
        $rules = array(
          
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
        $form_data = User::find($request->hidden_id);
        $fileName  = public_path('images-foto/').$form_data->foto;
        $currentImage = $user->foto;
        
        if ($request->foto != $currentImage) {
            $file = $request->file('foto');
            $fileName_new = date('YmdHis') . '.' . $file->getClientOriginalName();
            $file->move(public_path('images-foto/'), $fileName_new);
            $userImage = public_path('images-foto/').$currentImage;
            $form_data = [
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
                // 'password'   => Hash::make($request->password),
                'level'      => strtoupper($request->level),
                'id_anggota' => $request->id_anggota,
                'verifikasi' => $request->verifikasi,
                'is_admin'   => $request->is_admin,
                'kategori'   => $request->kategori,
                'no_telpn'   => $request->no_telpn, 
                'foto'       =>  $fileName_new
            ];
            File::delete($fileName);

            if(file_exists($userImage)){
                
                // File::delete($fileName);
                @unlink($userImage);
                
            }

        } else {
            // $fileName = $request->gambar;
            $form_data = [
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
                // 'password'   => Hash::make($request->password),
                'level'      => strtoupper($request->level),
                'id_anggota' => $request->id_anggota,
                'verifikasi' => $request->verifikasi,
                'is_admin'   => $request->is_admin,
                'kategori'   => $request->kategori,
                'no_telpn'   => $request->no_telpn,
            ];
        }
 
        User::whereId($request->hidden_id)->update($form_data);
 
        return response()->json([
            'success' => 'Data is successfully updated',
            
        ]);
    }
 
    public function destroy($id)
    {
        $data = User::where('id',$id)->first();
		File::delete('images-foto/'.$data->foto);

        $data = User::findOrFail($id);
        $data->delete();
    }

    public function detail($id)
    {
        if(request()->ajax())
        {
            $data = User::findOrFail($id);
            return response()->json($data);
        }
    }


    // Profile
    //edit Profile
    public function edit_profile($id)
	{
   		$users = User::find($id);
   		return view('users.profile', ['users' => $users]);
	}
	//update users
	public function update_profile($id, Request $request)
	{
        $nama_file = $request->hidden_image;
        $foto = $request->file('foto');
        if($foto != '')
        {
            $request->validate([
            'nrk' => 'required',
            'nip' => 'required',
            'no_ser_kar' => 'required',
            'name' => 'required', 'string', 'max:255',
            't_lahir' => 'required',
            'tgl_lahir' => 'required',
            'j_k' => 'required',
            'pang' => 'required',
            'gol' => 'required',
            'tmt_pang' => 'required',
            'ting' => 'required',
            'tmt_ting' => 'required',
            'u_k' => 'required',
            'inst' => 'required',
            'foto' => 'required|image|mimes:jpg,jpeg,png,ico',
            'level' => 'required'
            ]);
            $foto = $request->file('foto');
 
            $nama_file = time()."_".$foto->getClientOriginalName();
 
                // isi dengan nama folder tempat kemana file diupload
            $tujuan_upload = 'foto';
            $foto->move($tujuan_upload,$nama_file); 
        }
        else
        {
            $request->validate([
            'nrk' => 'required',
            'nip' => 'required',
            'no_ser_kar' => 'required',
            'name' => 'required', 'string', 'max:255',
            't_lahir' => 'required',
            'tgl_lahir' => 'required',
            'j_k' => 'required',
            'pang' => 'required',
            'gol' => 'required',
            'tmt_pang' => 'required',
            'ting' => 'required',
            'tmt_ting' => 'required',
            'u_k' => 'required',
            'inst' => 'required',
            'level' => 'required'
            ]);
        }

        $users = array(
            'nrk' => $request->nrk,
            'nip' => $request->nip,
            'no_ser_kar' => $request->no_ser_kar,
            'name' => $request->name,
            't_lahir' => $request->t_lahir,
            'tgl_lahir' => $request->tgl_lahir,
            'j_k' => $request->j_k,
            'pang' => $request->pang,
            'gol' => $request->gol,
            'tmt_pang' => $request->tmt_pang,
            'ting' => $request->ting,
            'tmt_ting' => $request->tmt_ting,
            'u_k' => $request->u_k,
            'inst' => $request->inst,
            'foto' => $nama_file,
            'level' => $request->level
        );

        User::whereId($id)->update($users);
        return redirect()->back()->with('success', 'Profile Berhasil Di Ubah');
        // return redirect('/home')->with('success', 'Data is successfully updated');
	}
    // Password
     public function edit_password($id)
     {
         $users = User::find($id);
         return view('users.password', ['users' => $users]);
     }
     //update Password
     public function update_password($id, Request $request)
     {
         $nama_file = $request->hidden_image;
         $foto = $request->file('foto');
         if($foto != '')
         {
             $request->validate([
            //   'nip' => 'required',
             ]);
             $foto = $request->file('foto');
  
             $nama_file = time()."_".$foto->getClientOriginalName();
  
                 // isi dengan nama folder tempat kemana file diupload
             $tujuan_upload = 'foto';
             $foto->move($tujuan_upload,$nama_file); 
         }
         else
         {
             $request->validate([
             'email' => 'required', 'string', 'email', 'max:255', 'unique:users',
             'password' => 'required', 'string', 'min:8', 'confirmed'
             ]);
         }
 
         $users = array(
             'email' => $request->email,
             'password' => Hash::make($request->password),
         );
 
         User::whereId($id)->update($users);
         // return redirect('/users')->with('success', 'Data is successfully updated');
         return redirect()->back()->with('success', 'Password Berhasil Di Ubah');
     }
}
