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


//administracion

$ruta->addRoute("admin","GET","ProductsController","showAdmin");

//agregar

$ruta->addRoute("insert", "POST", "ProductsController", "insertProduct");

//borrar

$ruta->addRoute("delete/:ID", "GET", "ProductsController", "deleteProduct");

// editar

$ruta->addRoute("edit/:ID", "GET", "ProductsController", "editProductPrice");
$ruta->addRoute("editar", "POST", "ProductsController", "editAllProduct");
//users

$ruta->addRoute("login","GET","UserController","LogIn");
$ruta->addRoute("logout", "GET", "UserController", "Logout");
$ruta->addRoute("verifyUser", "POST", "UserController", "VerifyUser");

//ruta por defecto
$ruta->setDefaultRoute("ProductsController", "Home");

//run
$ruta->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 

?>