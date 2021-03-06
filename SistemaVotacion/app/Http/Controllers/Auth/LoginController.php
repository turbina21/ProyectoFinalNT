<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Postulantes;
use App\Models\Votantes;


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
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function username()
    {
        return 'VOTANTECEDULA';
    }


    public function login(Request $request)
    {
        $ced = $request->VOTANTECEDULA;
        $pass = $request->VOTANTEPASSWORD;
        $query = DB::select("select VOTANTEPASSWORD,VOTANTECEDULA from votantes where VOTANTECEDULA='" . $ced . "';");
        $data = $query[0]->VOTANTEPASSWORD;
        //dd($query[0],$data);

        /*if (Auth::attempt(['VOTANTECEDULA' => $ced,'VOTANTECODIGOBARRAS' => $pass])){
            
             //return redirect('/home');
             dd('data');
        }*/
        if (hash::check($pass, $data)) {
           
            $votantes = Votantes::findOrFail($ced);
            Auth::login($votantes);
            return view('/home');
        }
        //{{ Auth::user()->VOTANTECODIGOBARRAS }}
        //{{ Crypt::decrypt($query[0]->VOTANTECODIGOBARRAS) }}
        return $this->sendFailedLoginResponse($request);
    }

    protected function validateLogin(Request $request)
    {
        $this->validate($request, [
            $this->username() => 'required', 'VOTANTEPASSWORD' => 'required',
        ]);
    }

    protected function credentials(Request $request)
    {
        return $request->only($this->username(), 'VOTANTEPASSWORD');
    }
}
