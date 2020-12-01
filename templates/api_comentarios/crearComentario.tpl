<div id="contenedor_crear_comentario" style="height:15vh;border:solid black;">
    <form action="crearComentario" method="POST">
        <p>Puntuar</p>
        <select name="select">
            <option value="value1">1</option> 
            <option value="value2" selected>2</option>
            <option value="value3">3</option>
            <option value="value3">4</option>
            <option value="value3">5</option>
        </select>
        <br>
        Escribir comentario
        <input type="text" name="input_comentario">
        <button type="submit">Enviar</button>

    </form>
</div>