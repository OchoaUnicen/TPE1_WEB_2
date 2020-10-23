<div class="accordion">
    <form  id="categorias_form_agregar" action="insertCategory" method="post">
        <div class="accordionContentBx">
            <div id="label" class="label" style="background: rgb(84, 84, 219)">Agregar Categoria</div>
            <div class="content">
  

                <div class="containerForm">
                    <h2>Agregar categoria</h2>

                    <div class="inputBox">

                        <span class="text">Nombre de la categoria</span>
                        <input type="text" name="nombre" required>
                        <span class="line"></span>
                    </div> 

                    <button class="containerFormButton" type="submit">Agregar Categoria</button>
                </div>
            </div>
        </div>      



    </form>

</div>



{* {include file="containerForm.tpl"} *}