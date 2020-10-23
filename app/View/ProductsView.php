<?php
require_once "./libs/smarty/Smarty.class.php";

class ProductsView {
    private $title;

    function __construct(){
        $this->title = "Lista de Productos";
    }

    function ShowbyCategories($categories,$products) {
 
        $smarty = new Smarty();
        $smarty->assign('titulo_s', $this->title);
        $smarty->assign('categories', $categories);
        $smarty->assign('products', $products);
        $smarty->display('templates/mainContent.tpl'); // muestro el template 
    }

    

    function ShowbyCategoriesbyName($categories,$parametro,$products) {
 
        $smarty = new Smarty();
        $smarty->assign('titulo_s', $this->title);
        $smarty->assign('categories', $categories);
        $smarty->assign('parametro', $parametro);
        $smarty->assign('products', $products);
        $smarty->display('templates/mainContentbyCategory.tpl'); // muestro el template 
    }

    function ShowbySpecificId($categories,$products,$parametroCat,$parametroProd) {
 
        $smarty = new Smarty();
        $smarty->assign('titulo_s', $this->title);
        $smarty->assign('categories', $categories);
        $smarty->assign('products', $products);
        $smarty->assign('parametro_categoria', $parametroCat);
        $smarty->assign('parametro_producto', $parametroProd);
        $smarty->display('templates/singleProduct.tpl'); // muestro el template 
    }

   function ShowHomeLocation(){
        header("Location: ".BASE_URL."home");
    }

    function showAdministracion($categories,$products) {

        $smarty = new Smarty();
        
        $smarty->assign('titulo_s', $this->title);
        
        $smarty->assign('categories', $categories);
        $smarty->assign('products', $products);

        $smarty->display('templates/adminContent.tpl');
    }

    function ShowAdminLocation(){
        header("Location: ".BASE_URL."admin");
    }

    


    function ShowEditProduct($product){
        //TODO hacer con Smarty
      
    }
}

?>