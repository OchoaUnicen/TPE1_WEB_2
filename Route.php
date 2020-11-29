<?php


// REQUIRES CONTROLLERS
require_once 'app/Controller/ProductsController.php';
require_once 'app/Controller/UserController.php';

require_once 'RouterClass.php';


// CONSTANTES PARA RUTEO
define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
define("LOGIN", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/login');
define("LOGOUT", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/logout');


$ruta = new Router();

//rutas

$ruta->addRoute("home","GET","ProductsController","Home");
$ruta->addRoute("productos","GET","ProductsController","Home");

$ruta->addRoute("productos/:ID","GET","ProductsController","GetCatByName");

$ruta->addRoute("productos/:ID_C/:ID_P","GET","ProductsController","GetProdById");

//administracion

$ruta->addRoute("admin","GET","ProductsController","showAdmin");

//agregar

$ruta->addRoute("insert", "POST", "ProductsController", "insertProduct");
$ruta->addRoute("insertCategory", "POST", "ProductsController", "insertCategory");
//borrar

$ruta->addRoute("delete/:ID", "GET", "ProductsController", "deleteProduct");
$ruta->addRoute("deleteCategory/:ID", "GET", "ProductsController", "deleteCategory");

// editar

$ruta->addRoute("edit/:ID", "GET", "ProductsController", "editProductPrice");
$ruta->addRoute("editar", "POST", "ProductsController", "editAllProduct");
$ruta->addRoute("editarCategoria", "POST", "ProductsController", "editCategory");





//Users

$ruta->addRoute("login","GET","UserController","LogIn");
$ruta->addRoute("logout", "GET", "UserController", "Logout");
$ruta->addRoute("verifyUser", "POST", "UserController", "VerifyUser");


//User register
$ruta->addRoute("register", "GET", "UserController", "Register");
$ruta->addRoute("registerUser", "POST", "UserController", "registerUser");
$ruta->addRoute("userpanel", "GET", "UserController", "ShowUserPanel");


//Admin user tools
$ruta->addRoute("ascenderUsuario/:ID", "GET", "UserController", "AscendAdmin");
$ruta->addRoute("descenderUsuario/:ID", "GET", "UserController", "DescendAdmin");
$ruta->addRoute("eliminarUsuario/:ID", "GET", "UserController", "DeleteUser");





//ruta por defecto
$ruta->setDefaultRoute("ProductsController", "Home");

//run
$ruta->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 

?>