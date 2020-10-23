let seleccionado = document.getElementsByClassName("liSeleccionado");

for (let i = 0; i <seleccionado.length; i++) {
    
    
    seleccionado[i].addEventListener("click", () => rellenar(
        seleccionado[i].id));
}
function rellenar(id) {

    let listEdit = document.getElementById(id);

  
let inputID = document.getElementById('inputID');    
let inputNombre = document.getElementById('inputNombre');
let inputDescripcion = document.getElementById('inputDescripcion');
let inputPrecio = document.getElementById('inputPrecio');
let inputImg = document.getElementById('inputImg');
let inputIdCat = document.getElementById('inputIdCat');

inputID.value = id;
// inputNombre = seleccionado[id].children.innerHTML;

// inputNombre.value = id->nombre;
// inputDescripcion.value = nombre;
// inputPrecio.value = nombre;
// inputImg.value = nombre;
// inputIdCat.value = nombre;


}

