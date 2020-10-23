<div class="accordion">
    <form  id="categoria_form_editar" action="editarCategoria" method="post">
        <div class="accordionContentBx">
            <div id="label" class="label" style="background: rgb(84, 84, 219)">Editar Categoria</div>
                <div class="content">


                    <div class="listBox">

                        <h2>Lista de categorias</h2>
                        <ul>
                        {foreach $categories as $category}
                            <li id="{$category->id_category}" class="liSeleccionadoCat">
                                <p>{$category->nombre}</p>
                            </li>
                        {/foreach} 
                        </ul>
                    </div>

                    <div class="containerForm">
                        <h2>Editar</h2>
                        <div class="inputBox">

                        <span class="text">ID de la categoria(read only)</span>
                        <input id="inputIDCat" type="text" name="id_categoryEdit" readonly>
                        <span class="line"></span>
                    </div> 
                    <div class="inputBox">
                    <span class="text">Nombre de la categoria</span>
                    <input id="inputNombre" type="text" name="nombreCategoryEdit" required>
                    <span class="line"></span>
                    </div>    
                    <div class="inputBox">


                    <button class="containerFormButton" type="submit">Editar Categoria</button>
                </div>
            </div>
        </div>      
    </form>
</div>

 
