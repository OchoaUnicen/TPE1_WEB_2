let accordion = document.getElementsByClassName("accordionContentBx");

let label = document.getElementsByClassName("label");

for (let i = 0; i<accordion.length; i++ ) {

    label[i].addEventListener('click', function(){

    accordion[i].classList.toggle('active');

    })
}