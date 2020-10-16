{include file="header.tpl"}

    {include file="sideMenu.tpl"}

        <section id="main" class="mainContent">
            <h1>{$titulo_s}</h1>

            {include file="filtro.tpl"}

            {foreach $categories as $category}
          
            {include file="listaProductos.tpl"}
            
            {/foreach} 
            


        <footer>
            <h2>Powered by us</h2>
        </footer>

        </section>

{include file="footer.tpl"}