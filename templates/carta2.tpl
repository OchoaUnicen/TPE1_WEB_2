<a class="card" href="get/{$product->id_product}">
        <div class="imgBx">
            <img src="{$product->image_url}" alt="">
        </div>
        <div class="contentBx">
            <h2>{$product->name}</h2>
            <p>{$product->description}</p>
            <p class="price">{$product->price}</p>
            <a href="#">Buy Now</a>
        </div>
</a>