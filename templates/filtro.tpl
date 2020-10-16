  

<div class="filtro">
    <p>Filtros:</p>
    <ul>
<li>
            <a href="home">
            Home
            </a>
        </li>
    {foreach $categories as $category}
        <li>
            <a href="productos/{$category->nombre}">
            {$category->nombre}
            </a>
        </li>
        
        {/foreach}
        <li>
            <a href="admin">
            Admin
            </a>
        </li>

    </ul>
</div>

