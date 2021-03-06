@extends('layouts.app')
@section('content')

<div class="card4">
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div style="text-align:center;">
            <h3> Certificado de votacion del ciudadano: <br> {{Auth::user()->VOTANTENOMBRES}} {{Auth::user()->VOTANTEAPELLIDOS}}</h3>
        </div>
    </div>
</div>
                @php
                use App\Models\Postulantes;
                $date= date("Y-m-d");
                @endphp
    <table style="width:100%;">
    <div class="row no-gutters">
        <div class="col-md-8">
            <td>
                <div class="form-group">
                <p class="card-title">{{Auth::user()->VOTANTECEDULA}}</strong></p>
                <strong>CÉDULA No.</strong>
                </div>
                <div class="form-group">
                <img src="{{Auth::user()->get_image}}" class="card-img" alt="..." id="imgpostulantes">
                </div>
                <div class="form-group">
                <p class="card-title">{{Auth::user()->VOTANTEAPELLIDOS}} {{Auth::user()->VOTANTENOMBRES}}</p>
                <strong>APELLIDOS Y NOMBRES</strong>
                </div>
                </td>
                <td>
                <div class="form-group">
                    <strong>PROVINCIA:</strong>
                    {{Auth::user()->VOTANTEPROVINCIA}}
                </div>
                <div class="form-group">
                    <strong>CANTÓN:</strong>
                   {{Auth::user()->VOTANTECANTON}}
                </div>
                <div class="form-group">
                    <strong>CIRCUNSCRIPCIÓN:</strong>
                    {{Auth::user()->VOTANTECIRCUNSCRIPCION}}
                </div>
                <div class="form-group">
                    <strong>PARROQUIA:</strong>
                    {{Auth::user()->VOTANTEPARROQUIA}}
                </div>
                <div class="form-group">
                <strong>COMPARTIR EN: </strong>
                <a href="http://www.facebook.com/sharer.php?u=https://sistemavotacioncne2021.herokuapp.com/login/" target="_blank">Facebook</a>
                </div>
                <strong>FECHA:</strong>
                    <p class="card-title">{{$date}}</p>
                <div style="text-align:center;">
                <?php

                use \Milon\Barcode\DNS1D;
                use Illuminate\Support\Facades\Auth;

                $d = new DNS1D();
                //dd(Auth::user()->VOTANTECODIGOBARRAS);
                echo $d->getBarcodeSVG(Auth::user()->VOTANTECODIGOBARRAS, 'PHARMA2T', 3, 33);
                ?>
                    
                </div>
                    
                </td>
        </div>
    </div>
    </table>
</div>
@endsection