<?php
include './clases/conexion.php';
include './clases/Usuario.php';

$objConexion = new conexion();
$objUsario = new Usuario();

$conexion = $objConexion->conectar();

//capturando la viable id que envie por el metodo get
$id = $_GET['id'];

$datos = $objUsario->consultarId($conexion, $id);

//variables para imprimir en los campos
$nombre;
$email;
while ($row = mysqli_fetch_array($datos)) {
    $nombre = $row['nombre'];
    $email = $row['correo'];
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <h3>Editar Usuario</h3>
        <form action="controlador/editar.php" method="post">
            <input name="id" type="hidden" value="<?php echo $id ; ?>">
            <label>Nombre: </label><input type="text" name="nombre" value="<?php echo $nombre; ?>"><br><br>
            <label>Email: </label><input type="email" name="email" value="<?php echo $email; ?>"><br><br>
            <input type="submit" value="modificar">
        </form>
        <?php
        // put your code here
        ?>
    </body>
</html>
