<?php
require_once 'RouterClass.php';
require_once 'api/APITasksController.php';

// instacio el router
$router = new Router();

// armo la tabla de ruteo de la API REST
$router->addRoute('tareas', 'GET', 'APITasksController', 'GetTasks');
$router->addRoute('tareas/:ID', 'GET', 'APITasksController', 'GetTask');
$router->addRoute('tareas/:ID', 'DELETE', 'APITasksController', 'DeleteTask');

$router->addRoute('tareas', 'POST', 'APITasksController', 'InsertTask');


$router->addRoute('tareas/:ID', 'PUT', 'APITasksController', 'UpdateTask');


 //run
 $router->route($_GET['resource'], $_SERVER['REQUEST_METHOD']); 
