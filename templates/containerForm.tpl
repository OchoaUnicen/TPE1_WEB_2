<div class="containerForm">
    <h2>Contact Us</h2>

    <div class="inputBox">
        
        <span class="text">Nombre del producto</span>
        <input type="text" name="name" required>
        <span class="line"></span>
    </div>

    <div class="inputBox">
        
        <span class="text">Descripcion del producto</span>
        <input type="text" name="description" required>
        <span class="line"></span>
    </div>

    <div class="inputBox">
        
        <span class="text">Precio del producto</span>
        <input type="text" name="price" required>
        <span class="line"></span>
    </div>


    <div class="inputBox">
    {* OJO *}
        <span class="text">Categoria SELECT</span>
        <select name="" id="">
        {foreach $categories as $category}
            <option value="{$category->id_category}">{$category->nombre}</option>
        {/foreach}
        </select>
        <span class="line"></span>
    </div>

    <div class="inputBox textarea">
        
        <span class="text">Imagen URL del producto</span>
        <input type="text" name="image_url" required>
        <span class="line"></span>
    </div>


    <button class="containerFormButton" type="submit">Agregar Producto</button>


</div>