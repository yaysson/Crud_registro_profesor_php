<?php

include '../clases/Usuario.php';
include '../clases/conexion.php';

$objConexion = new conexion();
$objUsario = new Usuario();

$conexion = $objConexion->conectar();
echo $objUsario->eliminar($_GET['id'], $conexion);


