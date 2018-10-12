<?php

include '../clases/conexion.php';
include '../clases/Usuario.php';

$objConexion = new conexion();
$objUsario = new Usuario();

$conexion = $objConexion->conectar();
echo $objUsario->editar($conexion, $_POST['nombre'], $_POST['email'], $_POST['id']);
