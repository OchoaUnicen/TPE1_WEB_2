<?php

class UserModel{

    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_products;charset=utf8', 'root', '');
    }
     
    function GetUser($users){

        // SELECCIONA DE LISTA users DONDE EL PARAM email SEA lo traido por parametro
        $sentencia = $this->db->prepare("SELECT * FROM users WHERE email=?");
        $sentencia->execute(array($users));
        return $sentencia->fetch(PDO::FETCH_OBJ);
    }
      
}

?>