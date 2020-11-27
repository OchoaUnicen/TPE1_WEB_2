{include file="header.tpl"}

    {include file="sideMenu.tpl"}

        <section id="main" class="mainContent">
            <h1>{$titulo_s}</h1>
    {* verifyUser *}
    <form id="registerForm" action="registerUser" method="post">

        <h2>Register</h2>

        <div class="input">

            <div class="inputBox">
                <label>Username</label>
                <input type="text" id="user" name="input_user_register" placeholder="examply@xyz.com">
            </div>

            <div class="inputBox">
                <label>Password</label>
                <input type="password" id="pass" name="input_pass_register" placeholder="*******">
            </div>

            <div class="inputBox">
                <label>Repeat password</label>
                <input type="password" id="pass_repeat" name="input_pass_register_2" placeholder="*******">
            </div>
            {* CAMBIAR ESTILO *}
            <p style="color:white;margin-top:20px;">{$message}</p>

            <div class="inputBox">
                <input type="submit" name="" value="Register">
            </div>
        </div>
         <p class="forgot">Registered already? <a href="login">Sing in</a></p>
    
    </form>

    </section>

{include file="footer.tpl"}