<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Auth\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function nonPns()
    {
 
        return view('frontends.register-nonpns');
    }

    public function pns()
    {
 
        return view('frontends.register-pns');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name'         => $data['name'],
            'email'        => $data['email'],
            'password'     => Hash::make($data['password']),
            'nip'          => $data['nip'],
            't_lahir'      => $data['t_lahir'],
            'tgl_lahir'    => $data['tgl_lahir'],
            'j_k'          => $data['j_k'],
            'inst'         => $data['inst'],
            'kategori'     => $data['kategori'],
            'no_telpn'     => $data['no_telpn'],
            'persetujuan'  => $data['persetujuan'],
            'pang'         => '0',
            'gol'          => '0',
            'ting'         => '0',
            'nrk'          => '0',
            'no_ser_kar'   => '0',
            'tmt_pang'     => '0',
            'tmt_ting'     => '0',
            'u_k'          => '0',
            'level'        => 'USERS',
            'foto'         => '0',
            'id_anggota'   => '0',
            'verifikasi'   => '0',
            'is_admin'     => '0',
        ]);
    }
}
