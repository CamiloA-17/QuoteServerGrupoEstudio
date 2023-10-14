@extends('layouts.app')

@section('content')
<div class="container">
    <header>
        <h1>Acerca de esta página</h1>
    </header>
    <div class="main">
        <P>Hola, esta es un proyecto del semillero de desarrollo web de la <a href="https://www.autonoma.edu.co/" target="blank">Universidad Autonoma de Manizales</a>, donde se espera como resultado tener una página que permita visualizar y publicar citas que sean pertinentes para cada persona</P>
        <p>Desarrolladores del proyecto:</p>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <p>Camilo</p>
            </li>
            <li class="list-group-item">
                <p>Julian</p>
            </li>
            <li class="list-group-item">
                <p>Majo</p>
            </li>
            <li class="list-group-item">
                <p>Martin</p>
            </li>
        </ul>
    </div>
    <div class="footer">
        <footer>
            UAM 2023 TODOS LOS DERECHOS RESERVADOS.
        </footer>
    </div>
</div>
@endsection