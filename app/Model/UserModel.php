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

    function GetUsers(){


        $query = $this->db->prepare('SELECT * FROM users');
        $query->execute();
        $users = $query->fetchAll(PDO::FETCH_OBJ);
        return $users;
    
        
    }

    function InsertUser($email,$pass,$time,$img_url){
        $sentencia = $this->db->prepare("INSERT INTO users(email, pass, fecha_registro, img_url) VALUES(?,?,?,?)");
        $sentencia->execute(array($email,$pass,$time,$img_url));
    }

    function ascenderUsuario($id_user){
        $sentencia = $this->db->prepare("UPDATE users SET is_admin='1' WHERE id_user=?");
        $sentencia->execute(array($id_user));
    }

    function descenderUsuario($id_user){
        $sentencia = $this->db->prepare("UPDATE users SET is_admin='0' WHERE id_user=?");
        $sentencia->execute(array($id_user));
    }

    function eliminarUsuario($id_user){
        $sentencia = $this->db->prepare("DELETE FROM users WHERE id_user=?");
        $sentencia->execute(array($id_user));
    }
    


      
}

?>