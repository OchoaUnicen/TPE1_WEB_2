<?php

//REQUIRE VIEW MODEL
require_once "app/View/ProductsView.php";
require_once "app/Model/ProductsModel.php";

class ProductsController { 

    private $view;
    private $model;

    function __construct(){
        $this->view = new ProductsView();
        $this->model = new ProductsModel();
    }

    function Home(){
        $categories = $this->model->GetCategories();
        $products = $this->model->GetProducts();
        $this->view->ShowbyCategories($categories,$products);
    }
    

    function GetCatByName($params = null){
        
        $parametro = $params[':ID'];

        $categories = $this->model->GetCategories();
        $products = $this->model->GetProducts();

        if ($parametro=="home") {
            $this->view->ShowHomeLocation();
        }
        elseif($parametro=="admin") {
            $this->view->ShowAdminLocation();
        }
        else {
            $this->model->GetAllByCatName($parametro);
            $this->view->ShowbyCategoriesbyName($categories,$parametro,$products);
        }
        
            
        
        
    }

    function GetProdById($params = null){
        
        $parametro = $params[':ID_prod'];
     
        $categories = $this->model->GetCategories();
        $products = $this->model->GetProducts();

        
            $this->model->GetAllByCatName($parametro);
            $this->view->ShowbyCategoriesbyName($categories,$parametro,$products);
        
        
    }

    private function checkLoggedIn(){
        session_start();
        
        if(!isset($_SESSION["EMAIL"])){
            header("Location: ". LOGIN);
            die();
        }else{
            if ( isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1000000)) { 
                header("Location: ". LOGOUT);
                die();
            } 
        
            $_SESSION['LAST_ACTIVITY'] = time();
        }
    }

    function showAdmin() {
        // $this->checkLoggedIn();

        $categories = $this->model->getCategories();
        $products = $this->model->getProducts();
 

        $this->view->showAdministracion($categories, $products);

    }

    function insertProduct() {

        $this->model->insertarProducto(
            $_POST['name'],
            $_POST['description'],
            $_POST['price'],
            $_POST['image_url'],
            $_POST['id_category']);

        // actualizar la pagina
        $this->view->ShowHomeLocation();

    }

    
    function editProductPrice($params = null){
        $product_id = $params[':ID'];
        $this->model->SetPrecioMil($product_id);
        $this->view->ShowHomeLocation();
    }

    function editAllProduct() { 
        $this->model->editarTodosLosProductos(
            $_POST['id_productEdit'],
            $_POST['nameEdit'],
            $_POST['descriptionEdit'],
            $_POST['priceEdit'],
            $_POST['image_urlEdit'],
            $_POST['id_categoryEdit']
        );
        $this->view->ShowHomeLocation();
    }

    function deleteProduct($params = null){
        $product_id = $params[':ID'];
        $this->model->DeleteProductM($product_id);
        $this->view->ShowHomeLocation();
    }

    


}

?>