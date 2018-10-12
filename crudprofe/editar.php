<?php

include "clases/conexion.php";
include "clases/profesor.php";

$objConexion = new conexion();
$objProfesor = new profesor();

$conexion = $objConexion->conectar();
$datosProfesor = $objProfesor->consultarId($conexion,$_GET['id']);//va el id del la base de datos.

$nombre;
$apellido;
$fechanacimiento;
$edad;
$documento;
$titulou;
$id;

while($profesor = mysqli_fetch_array($datosProfesor)){
     

    $id = $profesor['id_profesor'];
    $nombre = $profesor['nombre'];
    $apellido = $profesor['apellido'];
    $fechanacimiento = $profesor['fechanacimiento'];
    $edad = $profesor['edad'];
    $documento = $profesor['documento'];
    $titulou = $profesor['titulou'];

}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<h2><center>Editar registro</center></h2>
    <form action="controlador/editar.php" method="POST">
        
        <input type="hidden" name="id_profesor" value="<?php echo $id; ?>">
        
        <label for="">*Nombre</label><input type="text" name="Nombre" id="Nombre" value="<?php echo $nombre ?>"><p>
        <label for="">*Apellido</label><input type="text" name="Apellido" id="Apellido" value="<?php echo $apellido ?>" ><p>
        <label for="">*Edad</label><input type="text" name="Edad" id="Edad" value="<?php echo $edad ?>" ><p>
        <label for="">*Fecha nacimiento</label><input type="date" name="fechanacimiento" id="fechanacimiento" value="<?php echo $fechanacimiento ?>"><p>
        <label for="">*Documento</label><input type="text" name="Documento" id="Documento" value="<?php echo $documento ?>"><p>
        <label for="">*Titulo Universitario</label><input type="text" name="titulou" id="titulou" value="<?php echo $titulou ?>"><p>


                <input type= "submit" value= "Editar">

    
</body>
</html>