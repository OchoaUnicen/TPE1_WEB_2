<div class="accordion">
    
    {* NOS TRAJIMOS EL DE DELETE PARA PROBAR EL EDIT *}
    {* OJO NO HAY FORM *}
        <div class="accordionContentBx">
            <div id="label" class="label">Editar Precio del Producto a 1000</div>
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
                                <a href="edit/{$product->id_product}">Edit</a>
                            </button> 
                        </li>
                    {/foreach} 
                    </ul>
                </div>

            </div>
        </div>      



    

</div>






 


<div class="accordion">
<form  id="productos_form_editar" action="editar" method="post">
<div class="accordionContentBx">
<div id="label" class="label">Editar todo el Producto</div>
<div class="content">


<div class="listBox">

<h2>Lista de productos</h2>


<ul>

{foreach $products as $product}


<li id="{$product->id_product}" class="liSeleccionado">
<span>{$product->id_product}</span>
<p>{$product->name}</p>
<span>{$product->price}</span>
<span style="filter: invert(1);">{$product->id_category}</span>
<img src="{$product->image_url}" alt="">

</li>
{/foreach} 
</ul>
</div>

<div class="containerForm">
<h2>Editar</h2>
<div class="inputBox">

<span class="text">ID del producto (read only)</span>
<input id="inputID" type="text" name="id_productEdit" readonly>
<span class="line"></span>
</div> 
<div class="inputBox">

<span class="text">Nombre del producto</span>
<input id="inputNombre" type="text" name="nameEdit" required>
<span class="line"></span>
</div>    
<div class="inputBox">

<span class="text">Descripcion del producto</span>
<input id="inputDescripcion" type="text" name="descriptionEdit" required>
<span class="line"></span>
</div>

<div class="inputBox">
<span class="text">Precio del producto</span>
<input id="inputPrecio" type="number" name="priceEdit" required>
<span class="line"></span>
</div>

<div class="inputBox textarea">
<span class="text">Imagen URL del producto</span>
<input id="inputImg" type="text" name="image_urlEdit" required>
<span class="line"></span>
</div>


<div class="inputBox">


<span class="text">Categoria SELECT</span>
<select id="inputIdCatEdit" name="id_categoryEdit">
{foreach $categories as $category}
<option value="{$category->id_category}">{$category->nombre}</option>
{/foreach}
</select>
<span class="line"></span>
</div>


<button class="containerFormButton" type="submit">Editar Producto</button>
</div>
</div>
</div>      



</form>

</div>

 
