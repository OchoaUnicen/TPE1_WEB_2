<?php

require_once "./libs/smarty/Smarty.class.php";

class UserView{

    private $title;
    

    function __construct(){
        $this->title = "Login";
    }

    //EL MESSAGE ES TIPO SI VIENE UN ERROR NO HACE NADA, PERO SI NO VIENE MENSAJE SIGUE Y CARGA EL LOGIN
    function ShowLogIn($message = ""){

        $smarty = new Smarty();
        $smarty->assign('titulo_s', $this->title);
        $smarty->assign('message', $message);

        $smarty->display('templates/login.tpl'); // muestro el template 
    }

    function ShowHomeLocation(){
        header("Location: ".BASE_URL."home");
    }

    function ShowUserPanelLocation(){
        header("Location: ".BASE_URL."userpanel");
    }


    function ShowRegister($message = ""){

        $register = "Register";
        $smarty = new Smarty();
        $smarty->assign('titulo_s', $register);
        $smarty->assign('message', $message);

        $smarty->display('templates/register.tpl'); // muestro el template 
    }

    function ShowUserAdminPanel($message = "", $users, $userFromDB, $cantidad_users){

        //$register = "Admin Panel";
        $smarty = new Smarty();
        $smarty->assign('userFromDB', $userFromDB);
        $smarty->assign('users', $users);
        $smarty->assign('cantidad_users', $cantidad_users);
        // $smarty->assign('message', $message);

        $smarty->display('templates/adminPanel.tpl'); // muestro el template 
    }

}

?>