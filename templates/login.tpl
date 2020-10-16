{include file="header.tpl"}

    {include file="sideMenu.tpl"}

        <section id="main" class="mainContent">
            <h1>{$titulo_s}</h1>

    <form id="loginForm" action="verifyUser" method="post">

        <h2>Login</h2>

        <div class="input">

            <div class="inputBox">
                <label>Username</label>
                <input type="text" id="user" name="input_user" placeholder="examply@xyz.com">
            </div>

            <div class="inputBox">
                <label>Password</label>
            
                <input type="password" id="pass" name="input_pass" placeholder="*******">
            
            </div>
            {* CAMBIAR ESTILO *}
            <p style="color:white;margin-top:20px;">{$message}</p>

            <div class="inputBox">
                <input type="submit" name="" value="Sign In">
            </div>
        </div>
        <p class="forgot">Forgot Password?<a href="#">Click here</a></p>
    
    </form>

    </section>

{include file="footer.tpl"}