
{foreach $products as $product}

{if ($product->id_category) eq ($category->id_category)}
    

<div class="card">
 <div class="imgBx">

            <img src="{$product->image_url}" alt="">
            
        </div>
        <div class="contentBx">
            <h2>{$product->name}</h2>
            <p>{$product->description}</p>
            <p class="price">{$product->price}</p>
            {foreach $categories as $category}
            {if ($product->id_category) eq ($category->id_category)}

            <p class="cat">Categoria: {$category->nombre}</p>
            {/if}
            {/foreach}  
            
            <a href="#">Buy Now</a>
        </div> </div>
{/if}
    
{/foreach}  


        
