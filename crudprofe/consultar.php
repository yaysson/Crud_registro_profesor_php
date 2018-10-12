<?php

include "clases/conexion.php";
include "clases/profesor.php";


$objConexion = new conexion();
$objProfesor = new profesor();

$conexion = $objConexion->conectar();
$profesores = $objProfesor->consultar($conexion);

//muestra lo registrado.

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
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
            <th>Fecha Nacimiento</th>
            <th>titulo</th>
            <th>Titulo universitario</th>
            <th>Editar</th>
            <th>Eliminar</th>
        </tr>  

        <?php

            while($profesor = mysqli_fetch_array($profesores)){
        ?>  
        
                <tr>
                    <td><?php echo $profesor['nombre']?></td>
                    <td><?php echo $profesor['apellido']?></td>
                    <td><?php echo $profesor['edad']?></td>
                    <td><?php echo $profesor['fechanacimiento']?></td>
                    <td><?php echo $profesor['documento']?></td>
                    <td><?php echo $profesor['titulou']?></td>
                    <td><a href="editar.php?id= <?php echo $profesor['id_profesor']?>">editar</a></td>
                    <td><a href=""><a/></td>

                </tr>    
        <?php
            }
        ?>

        

    </table>




</body>
</html>

