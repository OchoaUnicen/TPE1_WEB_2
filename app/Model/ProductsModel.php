<?php

class ProductsModel {

    private $db;

    function __construct() {

        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_products;charset=utf8', 'root', '');
    }

    function GetCategories(){
        
        $query = $this->db->prepare('SELECT * FROM category');
        $query->execute();
        $categories = $query->fetchAll(PDO::FETCH_OBJ);
        return $categories;

    }

    function GetProducts(){
        
        $query = $this->db->prepare('SELECT * FROM product');
        $query->execute();
        $products = $query->fetchAll(PDO::FETCH_OBJ);
        return $products;

    }

    function GetProduct($id_product){
        $sentencia = $this->db->prepare("SELECT * FROM product WHERE id_product=?");
      $sentencia->execute(array($id_product));
      return $sentencia->fetch(PDO::FETCH_OBJ);

    }

    function GetAllByCatName($category_name){

        $catN = $this->db->prepare("SELECT FROM category WHERE nombre=?");
        $catN->execute(array($category_name));
        return $catN->fetch(PDO::FETCH_OBJ);
        ;
    }

    function insertarProducto($name,$description,$price,$image_url,$id_category){
        $sentencia = $this->db->prepare("INSERT INTO product(name, description, price, image_url, id_category) VALUES(?,?,?,?,?)");
        $sentencia->execute(array($name,$description,$price,$image_url,$id_category));
    }

    function editarProducto($product_id,$name){
        $sentencia = $this->db->prepare("UPDATE product SET name=$name WHERE id_product=?");
        $sentencia->execute(array($name,$product_id));
    }

    function MarkAsCompletedTask($task_id){
        $sentencia = $this->db->prepare("UPDATE task SET completed=1 WHERE id=?");
        $sentencia->execute(array($task_id));
    
    }

    function DeleteProductM($product_id){
        $sentencia = $this->db->prepare("DELETE FROM product WHERE id_product=?");
        $sentencia->execute(array($product_id));
    }
    function SetPrecioMil($product_id){
        
        $sentencia = $this->db->prepare("UPDATE product SET price='1000' WHERE id_product=?");
        $sentencia->execute(array($product_id));
    
    }


    function editarTodosLosProductos($product_id,$name,$description,$price,$image_url,$id_category){
        
        $sentencia = $this->db->prepare("UPDATE product SET name='$name', description='$description', price='$price', image_url='$image_url', id_category='$id_category' WHERE id_product=?");
        $sentencia->execute(array($product_id));
    
    }


}

?>