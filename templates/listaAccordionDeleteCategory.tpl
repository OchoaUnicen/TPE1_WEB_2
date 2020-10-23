<div class="accordion">
    
    {* OJO NO HAY FORM *}
        <div class="accordionContentBx">
            <div id="label" class="label" style="background: rgb(84, 84, 219)">Borrar Categoria</div>
            <div class="content">

                <div class="listBox">

                    <h2>Lista de Categorias</h2>


                    <ul>

                    {foreach $categories as $category}
                        
                    
                        <li>
                        <span>{$category->id_category}</span>
                        {$category->nombre}
                        <button type="button">
                                <a href="deleteCategory/{$category->id_category}">Borrar</a>
                            </button> 
                        </li>
                    {/foreach} 
                    </ul>
                </div>

            </div>
        </div>      



    

</div>


