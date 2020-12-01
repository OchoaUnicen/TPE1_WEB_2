{include file="header.tpl"}
{include file="sideMenu.tpl"}

<section id="main" class="mainContent">
    <h1>{$titulo_s}</h1>
        
    {include file="filtro.tpl"}

    {foreach $products as $product}
        {if {$product->id_product} eq {$parametro_producto}}  
            {* {if {$categories->nombre} eq {$parametro_categoria}} *}
    
            <div class="card">
                <div class="imgBx">
                    <img src="{$product->image_url}" alt="">
                </div>
                <div class="contentBx">
                    <h2>{$product->name}</h2>
                    <p>{$product->description}</p>
                    <p class="price">{$product->price}</p>
                    <p>{$product->id_category}</p>
                    <a href="#">Buy Now</a>
                </div>
            </div>
        {* {else}

        <p>No existe ese producto en esta categoria</p>
        {/if} *}


    {/if}
    {/foreach}      


  
    {* ACA IRIA LA CAJA DE CREAR COMENTARIOS SI EL USUARIO ESTA CONECTADO *}

       {if {$loggedIn} eq 1}
            {include file="api_comentarios/crearComentario.tpl"}
       {/if}

   
    {* ACA IRIAN EL RESTO DE LOS COMENTARIOS DE ESTE ITEM *}

   <h2>Comentarios: </h2> <br>
    {if {$cantidad_comentarios} > 0}
             {foreach $comments as $comment}
                <p>Usuario: {$comment->id_user}</p>
                <p>Puntuacion: {$comment->puntuacion}  Comentario: {$comment->comentario} </p> <br>
            {/foreach}
    {/if}

 

        {* SI EL COMENTARIO TIENE UN BOTON DE BORRAR O NO DEPENDERA SI EL USUARIO ES ADMIN O NO *}



  
    

    <footer>
        <h2>Powered by us</h2>
    </footer>
    
</section>



{include file="footer.tpl"}
