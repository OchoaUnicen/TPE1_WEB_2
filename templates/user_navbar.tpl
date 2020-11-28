<nav id="user_navbar" class="navbar">
        <ul>

           
            {if {$is_logged_in} eq 0}  

                <li>
                    <a href="login">Ingresar</a>  
                </li>
                <li>
                    <a href="register"> Registrarse</a>
                </li>
            {/if}

               {if {$is_logged_in} eq 1}  
 
                <li>
                  <a href="userpanel"> Hola, {$logged_user_nick}</a>
                </li>

                <li>
                    <a href="userpanel"> Panel de control</a>
                </li>
               
                <li>
                    <a href="logout"> Log out</a>
                </li>
            {/if}






           
            
        </ul>
</nav>