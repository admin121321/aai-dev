<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;
    protected function authenticated(Request $request, $user)
    {
    // if ( $user->isAdmin() ) {// do your magic here
    //     return redirect()->route('dashboard');
    // }

    return redirect('/home');
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    // Login by Email dan ID anggota
    public function login(Request $request)
{
    $this->validate($request, [
        'id_anggota' => 'required|string', //VALIDASI KOLOM USERNAME
        //TAPI KOLOM INI BISA BERISI EMAIL ATAU USERNAME
        'password' => 'required|string|min:6',
    ]);

    //LAKUKAN PENGECEKAN, JIKA INPUTAN DARI USERNAME FORMATNYA ADALAH EMAIL, MAKA KITA AKAN MELAKUKAN PROSES AUTHENTICATION MENGGUNAKAN EMAIL, SELAIN ITU, AKAN MENGGUNAKAN USERNAME
    $loginType = filter_var($request->id_anggota, FILTER_VALIDATE_EMAIL) ? 'email' : 'id_anggota';
  
    //TAMPUNG INFORMASI LOGINNYA, DIMANA KOLOM TYPE PERTAMA BERSIFAT DINAMIS BERDASARKAN VALUE DARI PENGECEKAN DIATAS
    $login = [
        $loginType => $request->id_anggota,
        'password' => $request->password
    ];
  
    //LAKUKAN LOGIN
    if (auth()->attempt($login)) {
        //JIKA BERHASIL, MAKA REDIRECT KE HALAMAN HOME
        return redirect()->route('home');
    }
    //JIKA SALAH, MAKA KEMBALI KE LOGIN DAN TAMPILKAN NOTIFIKASI 
    return redirect()->route('login')->with(['error' => 'Email/Password salah!']);
}

}
