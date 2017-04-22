<?php
    //Parametros
    $hostdb = "localhost";              //Nombre del servidor
    $usuariodb = "root";                //Nombre del usuario
    $clavedb = "";                     //Contraseña del usuario
    $basededatos = "AbarrotesBD";       //Nombre de la base de datos (BD)
    //Cadena de conexion completa
    $cadenaConexion = mysqli_connect("$hostdb","$usuariodb","$clavedb","$basededatos");
?>