<?php

include '../clases/conexion.php';
include '../clases/Usuario.php';

$objConexion = new conexion();
$conexion = $objConexion->conectar();

$objUsario = new Usuario();
echo $objUsario->registrar($conexion, $_POST['nombre'], $_POST['email'], $_POST['password']);