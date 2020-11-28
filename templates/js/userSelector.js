document.addEventListener('DOMContentLoaded', function(){

"use strict";

 let contenedor_user = document.getElementsByClassName("users");

 for (let i = 0 ; i < contenedor_user.length; i++){
    contenedor_user[i].classList.add("user_"+i);
    contenedor_user[i].addEventListener('click', (e,i) => {
        mostrarInformaciondeUsuarioSeleccionado(e,i);
    });
 }





function mostrarInformaciondeUsuarioSeleccionado (e,i) {
    


    // let current_img_container = document.getElementById("current_img_container");
    // console.log(current_img_container);
    // if () {

    // }
    // let image_frame = document.getElementsByClassName("user_"+i);
    // let selected_user_img = image_frame.nextSibling.src;



    





    current_img_container.src = selected_user_img;


}









});