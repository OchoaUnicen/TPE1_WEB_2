<?php

require_once "app/View/UserView.php";
require_once "app/Model/UserModel.php";

class UserController{

    private $view;
    private $model;

    function __construct(){

        $this->view = new UserView();
        $this->model = new UserModel();
    }

    function LogIn(){

        $this->view->ShowLogIn();
    }

    function Register(){

        $this->view->ShowRegister();
    }

    function Logout(){
        session_start();
        session_destroy();
        header("Location: ".LOGIN);

    }

    function VerifyUser(){
        $user = $_POST["input_user"];
        $pass = $_POST["input_pass"];

        if(isset($user)){
            $userFromDB = $this->model->GetUser($user);

            if(isset($userFromDB) && $userFromDB){
                // Existe el usuario

                if (password_verify($pass, $userFromDB->pass)){

                    session_start();
                    $_SESSION["EMAIL"] = $userFromDB->email;
                    $_SESSION['LAST_ACTIVITY'] = time();

                    header("Location: ".BASE_URL."home");
                }else{
                    $this->view->ShowLogin("Contraseña incorrecta");
                }

            }else{
                // No existe el user en la DB
                $this->view->ShowLogin("El usuario no existe");
            }
        }
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

    //SEGUIR ACA
    function ShowUserPanel() {
        $connected_user;
        $cantidad_users;
        $this->checkLoggedIn();

        $users = $this->model->GetUsers();
        if(isset($_SESSION["EMAIL"]) && !empty($_SESSION["EMAIL"])){
            $connected_user = $_SESSION["EMAIL"];

            $userFromDB = $this->model->GetUser($connected_user);
            
        }
        $cantidad_users = count($users);

        
        //aca

        //FALTA HACER UNA FUNCION getUsers QUE PIDA TODOS LOS USUARIOS QUE HAY
       //$categories = $this->model->getCategories();
      // $products = $this->model->getProducts();

       
       $this->view->ShowUserAdminPanel(null,$users, $userFromDB, $cantidad_users); //$users
   }



  

   function registerUser(){
       $input_id;
       $input_pass;
       $time = date("Y-m-d");
        if (isset($_POST['input_user_register']) && !empty($_POST['input_user_register'])) {

            $input_id = $_POST['input_user_register'];
            $input_pass = $_POST['input_pass_register'];
           

            $userFromDB = $this->model->GetUser($input_id);

            if(isset($userFromDB) && $userFromDB){
                // Existe el usuario

             
                    $this->view->ShowRegister("El nombre de usuario ya existe, intente con otro");
               

            }else{
                // No existe el user en la DB
              
                $encripted_pass = password_hash($input_pass, PASSWORD_DEFAULT);


                $this->model->InsertUser(
                    $input_id,
                    $encripted_pass,
                    $time
                );

                $this->view->ShowHomeLocation();
            }



            

        }

        
        // actualizar la pagina
        

   }



}

?>