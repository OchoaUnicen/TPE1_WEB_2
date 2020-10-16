<div class="accordion">
    
    {* OJO NO HAY FORM *}
        <div class="accordionContentBx">
            <div id="label" class="label">Borrar Producto</div>
            <div class="content">

                <div class="listBox">

                    <h2>Lista de productos</h2>


                    <ul>

                    {foreach $products as $product}
                        
                    
                        <li>
                        <span>{$product->id_product}</span>
                        {$product->name}
                        <span>{$product->price}</span>
                        <span style="filter: invert(1);">{$product->id_category}</span>
                        <img src="{$product->image_url}" alt="">
                        <button type="button">
                                <a href="delete/{$product->id_product}">Borrar</a>
                            </button> 
                        </li>
                    {/foreach} 
                    </ul>
                </div>

            </div>
        </div>      



    

</div>


