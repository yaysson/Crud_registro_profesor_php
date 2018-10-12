<?php

include "../clases/conexion.php";
include "../clases/profesor.php";


$objConexion = new conexion();
$objProfesor = new profesor();

$conexion = $objConexion->conectar();
echo $objProfesor->editar($conexion,$_POST['id_profesor'],$_POST['Nombre'],$_POST['Apellido'],$_POST['Edad'],
$_POST['fechanacimiento'],$_POST['Documento'],$_POST['titulou']);


echo "<a href='../consultar.php'>Ver registro</a>";
