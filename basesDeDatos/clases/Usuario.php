<?php
/**
 * Description of Usuario
 *
 * @author usuario
 */
class Usuario {

    public function registrar($conexion, $nombre, $email, $password) {
        $query = "INSERT INTO usuario (nombre, correo, password) VALUES('$nombre', '$email', '$password')";
        $consulta = mysqli_query($conexion, $query);
        if ($consulta) {
            $respuesta = "registrado con exito";
        } else {
            $respuesta = "problema con el registro";
        }
        return $respuesta;
    }

    public function consultar($conexion) {
        $query = "SELECT * FROM usuario";
        $consulta = mysqli_query($conexion, $query);
        return $consulta;
    }

    public function consultarId($conexion, $id) {
        $query = "SELECT * FROM usuario WHERE idUsuario = $id";
        $consulta = mysqli_query($conexion, $query);
        return $consulta;
    }
    
    public function editar($conexion, $nombre, $correo, $id) {
        $query = "UPDATE usuario SET nombre='$nombre', correo='$correo' WHERE idUsuario = $id";
        $consulta = mysqli_query($conexion, $query);
        if ($consulta) {
            $respuesta = "actualizado con exito";
        } else {
            $respuesta = "problema  al Actualizar";
        }
        return $respuesta;
    }
    
    public function eliminar($id, $conexion){
        $query= "DELETE FROM usuario WHERE idUsuario = $id";
        $consulta = mysqli_query($conexion, $query);
        if ($consulta) {
            $respuesta = "eliminado con exito";
        } else {
            $respuesta = "problema  al eliminar";
        }
        return $respuesta;
    }

}
