<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Exports\UserExport;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Haruncpi\LaravelIdGenerator\IdGenerator;

use DataTables;
use Validator;
use File;
use DB;
use PDF;
use Excel;

class UserController extends Controller
{
    //
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select('users.*')->orderBy('created_at', 'DESC')->latest()->get();
            return Datatables::of($data)->addIndexColumn()
                ->addColumn('action', function($data){
                    $button = '<button type="button" name="edit" id="'.$data->id.'" class="edit btn btn-primary btn-sm"> <i class="bi bi-pencil-square"></i>Edit Profile</button>';
                    $button .= '<button type="button" name="edit" id="'.$data->id.'" class="passwordButton btn btn-warning btn-sm"> <i class="bi bi-pencil-square"></i>Edit Pass</button>';
                    $button .= '<button type="button" name="edit" id="'.$data->id.'" class="detailButton btn btn-success btn-sm"> <i class="bi bi-pencil-square"></i>Detail</button>';
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
            'foto' => '|image|mimes:jpg,jpeg,png,ico',
            'bukti_pembayaran' => '|image|mimes:jpg,jpeg,png,ico,pdf',
        ]);

        $foto = $request->file('foto');

        if ($foto == NULL){
            $bukti_file = date('YmdHis').'.'.$bukti_pembayaran->getClientOriginalName();
            $tujuan_upload = 'images-pembayaran';
            $bukti_pembayaran->move($tujuan_upload,$bukti_file);

            $id_generate = IdGenerator::generate(['table' => 'users', 'length' => 9, 'prefix' =>date('Y')]);
            //output: 191000001
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
                    'id_anggota' => $id_generate,
                    // 'id_anggota' => $request->id_anggota,
                    'id_anggota' => $request->id_anggota,
                    'verifikasi' => $request->verifikasi,
                    'is_admin'   => $request->is_admin,
                    'kategori'   => $request->kategori,
                    'no_telpn'   => $request->no_telpn,
                    'persetujuan'=> $request->persetujuan,
                    'bukti_pembayaran' => $file_bukti
            );

        } else {
            $nama_file = date('YmdHis').'.'.$foto->getClientOriginalName();
            $tujuan_upload = 'images-foto';
            $foto->move($tujuan_upload,$nama_file);
            
            $bukti_file = date('YmdHis').'.'.$bukti_pembayaran->getClientOriginalName();
            $tujuan_upload = 'images-pembayaran';
            $bukti_pembayaran->move($tujuan_upload,$bukti_file);

            $id_generate = IdGenerator::generate(['table' => 'users', 'length' => 9, 'prefix' =>date('Y')]);
            //output: 191000001
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
                    'id_anggota' => $id_generate,
                    // 'id_anggota' => $request->id_anggota,
                    'verifikasi' => $request->verifikasi,
                    'is_admin'   => $request->is_admin,
                    'kategori'   =>  $request->kategori,
                    'no_telpn'   =>  $request->no_telpn,
                    'persetujuan'=> $request->persetujuan,
                    'bukti_pembayaran' => $bukti_file
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
                'persetujuan'=> $request->persetujuan, 
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
                'persetujuan'=> $request->persetujuan,
            ];
        }
 
        User::whereId($request->hidden_id)->update($form_data);
 
        return response()->json([
            'success' => 'Data is successfully updated',
            
        ]);
    }

    public function edit_pass($id)
    {
        if(request()->ajax())
        {
            $data = User::findOrFail($id);
            return response()->json(['result' => $data]);
        }
    }

    public function update_pass(Request $request, User $user)
    {
        $rules = array(
          
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $form_data = array(
            'email'      => $request->email,
            'password'   => Hash::make($request->password),
        );
 
        User::whereId($request->hidden_id_pass)->update($form_data);
 
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
	public function update_profile($id, Request $request,  User $user)
	{
        $rules = array(
            'foto' => '|image|mimes:jpg,jpeg,png,ico',
        );
 
        $error = Validator::make($request->all(), $rules);
 
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        $form_data = User::find($request->id);
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
                'level'      => strtoupper($request->level),
                'id_anggota' => $request->id_anggota,
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
                'level'      => strtoupper($request->level),
                'id_anggota' => $request->id_anggota,
                'kategori'   => $request->kategori,
                'no_telpn'   => $request->no_telpn,
            ];
        }

        User::whereId($id)->update($form_data);
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

    //  export pdf
     public function export_pdf(){
        $users  = User::all();
        $pdf = PDF::loadview('users.export-user-pdf', ['users'=>$users])->setPaper('F4', 'landscape');
        // ->setPaper([0, 0, 685.98, 396.85], 'landscape')
    	return $pdf->download('list_anggota_aai_jakarta.pdf');
     }

    //  export excel
     public function export_excel(){
        return Excel::download(new UserExport, 'anggota_aai_'.date('Y-m-d_h-m-s').'.xlsx');
     }

     public function buku_petunjuk()
     {
        
         return view('users.buku-petunjuk');
     }
}
