let seleccionadoCat = document.getElementsByClassName("liSeleccionadoCat");

for (let i = 0; i <seleccionadoCat.length; i++) {
    
    
    seleccionadoCat[i].addEventListener("click", () => rellenar(
        seleccionadoCat[i].id));
}
function rellenar(id) {

    let listEdit = document.getElementById(id);

  
let inputID = document.getElementById('inputIDCat');    


inputID.value = id;
// inputNombre = seleccionado[id].children.innerHTML;

// inputNombre.value = id->nombre;
// inputDescripcion.value = nombre;
// inputPrecio.value = nombre;
// inputImg.value = nombre;
// inputIdCat.value = nombre;


}

