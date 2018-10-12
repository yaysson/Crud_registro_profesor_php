<?php


//crear conexion
class conexion
{
    public function conectar()
    {
        $host = 'localhost';
        $user = 'root';
        $passwor = 'root';
        $db = 'nochecrud'; //nombre de base de datos
        $conexion = mysqli_connect($host, $user, $passwor, $db);

        if ($conexion == false) {
            die('ERROR'.mysqli_connect_error);
        } else {
            return $conexion;
        }
    }
}
