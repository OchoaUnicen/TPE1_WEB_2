<div class="accordion">
            <div class="accordionContentBx">
                <div id="label" class="label">Agregar</div>
                <div class="content">
                    
                    {include file="listBox.tpl"}

                    <!-- otra cosa -->
                    
                    {* VER SI EL CONTAINER FORM VIENE DIRECTO DELETE O EDIT O ADD *}
                    {include file="containerForm.tpl"}
                    
                    <!-- FIN TEXT FORM -->
                </div>

                
            </div>
        

            <div class="accordionContentBx">
                <div class="label">Form 1</div>
                <div class="content">
                    
                    <!-- INICIO TEXT FORM -->

                    {include file="containerForm.tpl"}


                    <!-- FIN TEXT FORM -->
                </div>
            </div>
        
            <div class="accordionContentBx">
                <div class="label">Form Select</div>
                <div class="content">
                    
            {include file="boxSelect.tpl"}
                   
                </div>
            </div>
        </div>