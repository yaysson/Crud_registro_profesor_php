<?php
include "clases/conexion.php";
include "clases/Usuario.php";

$objConexion = new conexion();
$objUsuario = new Usuario();

$conexion = $objConexion->conectar();
$datos = $objUsuario->consultar($conexion);
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
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Correo</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <?php
            while ($dato = mysqli_fetch_array($datos)) {
            ?>
                <tr>
                    <td><?php echo $dato['idUsuario'] ?></td>
                    <td><?php echo $dato['nombre'] ?></td>
                    <td><?php echo $dato['correo'] ?></td>
                    <td><a href="editar.php?id=<?php echo $dato['idUsuario']; ?>">Editar</a></td>
                    <td><a href="controlador/eliminar.php?id=<?php echo $dato['idUsuario']; ?>">Eliminar</a></td>
                </tr>
            <?php
            }
            ?>
        </table>
        
        <a href="index.php">Inicio</a>
    </body>
</html>