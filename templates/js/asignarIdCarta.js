let carta = document.getElementsByClassName("card");

for (let i = 0; i < carta.length; i++) {

    carta[i].addEventListener('click', function(){

        alert(this.id);




    })
}