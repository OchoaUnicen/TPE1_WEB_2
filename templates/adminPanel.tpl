<!DOCTYPE html>
<html lang="en">
<title>Panel de control de usuarios</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="templates/adminPanel.css">

<body>

<!-- Side Navigation -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-white w3-animate-left w3-card" style="z-index:3;width:320px;" id="mySidebar">
  <a href="home" class="w3-bar-item w3-button w3-border-bottom w3-large">Volver atras</a>
  <h2>Bienvenido: {$userFromDB->email}</h2>
  <a href="javascript:void(0)" onclick="w3_close()" title="Close Sidemenu" 
  class="w3-bar-item w3-button w3-hide-large w3-large">Close <i class="fa fa-remove"></i></a>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-dark-grey w3-button w3-hover-black w3-left-align" onclick="document.getElementById('id01').style.display='block'">Editar perfil<i class="w3-padding fa fa-pencil"></i></a>
  <a href="logout" class="w3-bar-item w3-button">Cerrar sesion</a>
 
    {if {$userFromDB->is_admin} eq 1}  
        <a id="myBtn" onclick="myFunc('Demo1')" href="javascript:void(0)" class="w3-bar-item w3-button"><i class="fa fa-inbox w3-margin-right"></i>Usuarios ({$cantidad_users})<i class="fa fa-caret-down w3-margin-left"></i></a>
    {/if}
  

  <div id="Demo1" class="w3-hide w3-animate-left">




    {foreach $users as $user}
         <a href="javascript:void(0)" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey" onclick="openMail('Borge');w3_close();" id="firstTab">
        <div class="w3-container">
        <img class="w3-round w3-margin-right" src="/w3images/avatar3.png" style="width:15%;"><span class="w3-opacity w3-large">{$user->email}</span>
        {if {$user->is_admin} eq 0}  
               <h6>Usuario: Normal</h6>
        {/if}
         {if {$user->is_admin} eq 1}  
               <h6>Usuario: Administrador</h6>
        {/if}
        
        
        <p>Fecha de registro: {$user->fecha_registro}</p>
      </div>
    </a>
        
    {/foreach}

   



  </div>
  
  
</nav>

<!-- Modal that pops up when you click on "New Message" -->
<div id="id01" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-red">
       <span onclick="document.getElementById('id01').style.display='none'"
       class="w3-button w3-red w3-right w3-xxlarge"><i class="fa fa-remove"></i></span>
      <h2>Editar perfil</h2>
    </div>
    <div class="w3-panel">
      <label>Imagen URL de pefil</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <label>Bio</label>
      <input class="w3-input w3-border w3-margin-bottom" style="height:150px" placeholder="Current bio">
      <div class="w3-section">
        <a class="w3-button w3-red" onclick="document.getElementById('id01').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
        <a class="w3-button w3-light-grey w3-right" onclick="document.getElementById('id01').style.display='none'">Editar perfil</a> 
      </div>    
    </div>
  </div>
</div>

<!-- Overlay effect when opening the side navigation on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="Close Sidemenu" id="myOverlay"></div>

<!-- Page content -->
<div class="w3-main" style="margin-left:320px;">
<i class="fa fa-bars w3-button w3-white w3-hide-large w3-xlarge w3-margin-left w3-margin-top" onclick="w3_open()"></i>
<a href="javascript:void(0)" class="w3-hide-large w3-red w3-button w3-right w3-margin-top w3-margin-right" onclick="document.getElementById('id01').style.display='block'"><i class="fa fa-pencil"></i></a>

<div id="Borge" class="w3-container person">
  <br>
  <img class="w3-round  w3-animate-top" src="/w3images/avatar3.png" style="width:20%;">
 
        {if {$users[0]->is_admin} eq 0}  
              <h5 class="w3-opacity">Usuario: Normal</h5>
        {/if}
         {if {$users[0]->is_admin} eq 1}  
                <h5 class="w3-opacity">Usuario: Administrador</h5>
        {/if}

  <h4><i class="fa fa-clock-o"></i>{$users[0]->email}, {$users[0]->fecha_registro}</h4>

   {if {$users[0]->is_admin} eq 0}  
              <a class="w3-button w3-light-grey" href="#">Convertir en administrador<i class="w3-margin-left fa fa-mail-reply"></i></a>
        {/if}
         {if {$users[0]->is_admin} eq 1}  
              <a class="w3-button w3-light-grey" href="#">Convertir en usuario normal<i class="w3-margin-left fa fa-mail-reply"></i></a>
        {/if}
  
  <a class="w3-button w3-light-grey" href="#">Eliminar usuario<i class="w3-margin-left fa fa-arrow-right"></i></a>
  <hr>
  <p>{$users[0]->bio}</p> 
</div>
     
</div>

<script>
var openInbox = document.getElementById("myBtn");
openInbox.click();

function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

function myFunc(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show"; 
    x.previousElementSibling.className += " w3-red";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-red", "");
  }
}

openMail("Borge")
function openMail(personName) {
  var i;
  var x = document.getElementsByClassName("person");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  x = document.getElementsByClassName("test");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" w3-light-grey", "");
  }
  document.getElementById(personName).style.display = "block";
  event.currentTarget.className += " w3-light-grey";
}
</script>

<script>
var openTab = document.getElementById("firstTab");
openTab.click();
</script>

</body>
</html> 
