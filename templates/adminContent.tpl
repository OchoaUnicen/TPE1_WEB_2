{include file="header.tpl"}

    {include file="sideMenu.tpl"}

        <section id="main" class="mainContent">
            <h1>{$titulo_s}</h1>

            {include file="filtro.tpl"}
            
            {* PRODUCTO *}


            
            {include file="listaAccordionAddProduct.tpl"}
            {include file="listaAccordionDeleteProduct.tpl"}
            {include file="listaAccordionEditProduct.tpl"} 



            {* CATEGORIA *}
            {* {include file="listaAccordionAddProduct.tpl"}
            {include file="listaAccordionDeleteProduct.tpl"}
            {include file="listaAccordionEditProduct.tpl"} *}

        <footer>
            <h2>Powered by us</h2>
        </footer>

        </section>

{include file="footer.tpl"}