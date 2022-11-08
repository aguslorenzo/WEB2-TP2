"use strict"
const URL = "http://localhost/WEB2-TPE2/api/parks/";

async function getAll(){

    try {
        let response = await fetch(URL);
        if (!response.ok) {
            throw new Error ('No existe'); //se puede mejorar este error
        }
        let parks = await response.json();
    
        showParks(parks);
    } catch(e){
        console.log(e); //tratar el error de la forma que queramos
    }

}

function showParks(parks){
    let ul = document.querySelector("#park-list");
    ul.innerHTML = "";
    for (const park of parks) {
        // aca mi problema es q me muestra el id de la provincia
        ul.innerHTML += `<li> ${park.name} | ${park.description} | ${park.price} | ${park.id_province_fk} </li>` 
        console.log(park);
    }
}

getAll();