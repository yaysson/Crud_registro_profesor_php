<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of conexion
 *
 * @author usuario
 */
class conexion {

    public function conectar() {
        
        $link = mysqli_connect("localhost", "root", "", "usuarios");
        
        if ($link === false) {
            die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        return $link;
    }

}
