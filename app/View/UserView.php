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

}

?>