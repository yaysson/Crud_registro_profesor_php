<?php

class profesor
{
    public function registrar($conexion, $nombre, $apellido, $edad, $fechanacimiento, $documento, $titulou)
    {
        $query = "INSERT INTO profesor(nombre,apellido,edad,fechanacimiento,documento,titulou)
        VALUES ('$nombre','$apellido','$edad','$fechanacimiento','$documento','$titulou')";

        $consulta = mysqli_query($conexion, $query);
        if ($consulta) {
            $respuesta = 'Profesor registrado';
        } else {
            $respuesta = 'Problemas al registrar';
        }

        return $respuesta;
    }

    public function consultar($conexion){

        $query = "SELECT * FROM profesor";
        $consulta = mysqli_query($conexion, $query);
        return $consulta;
    }

    //consultar datos de una persona.

    public function consultarId($conexion, $id){

        $query = "SELECT * FROM profesor WHERE id_profesor=$id";
        $consulta = mysqli_query($conexion, $query);

        return $consulta;

    }

    public function editar($conexion,$id, $nombre, $apellido, $edad, $fechanacimiento, $documento, $titulou){
         $query = "UPDATE profesor SET nombre = '$nombre',apellido = '$apellido',
        edad = $edad, fechanacimiento = '$fechanacimiento', documento = '$documento', titulou = '$titulou'
        WHERE id_profesor =$id";
        $consulta = mysqli_query($conexion, $query);

        if($consulta){
            $respuesta = "Profesor actualizado";
        }else{

            $respuesta = "Problemas en la actualizacion";


        }

        return $respuesta;

    }

}
