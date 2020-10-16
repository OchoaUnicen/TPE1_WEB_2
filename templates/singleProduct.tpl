{include file="header.tpl"}

    {include file="sideMenu.tpl"}

        <section id="main" class="mainContent">
            <h1>{$titulo_s}</h1>

            {include file="filtro.tpl"}

{foreach $producto_s as $product}
           
       <div class="card">
        <div class="imgBx">

            <img src="{$product->image_url}" alt="">
            
        </div>
        <div class="contentBx">
            <h2>{$product->name}</h2>
            <p>{$product->description}</p>
            <p class="price">{$product->price}</p>
            <a href="#">Buy Now</a>
        </div>
    </div>

{/foreach}      

        <footer>
            <h2>Powered by us</h2>
        </footer>


        </section>

{include file="footer.tpl"}
