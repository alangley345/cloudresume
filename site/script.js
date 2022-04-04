var update = new XMLHttpRequest()
update.open('GET', 'https://api.aaronlangley.net/updateVisitorCount/', true)
update.setRequestHeader("Content-Type", "application/json");
update.send()


//document.getElementById("visits").innerHTML = "1";

function showCount() {
    visitCount = "to be implemented";
    //const id    = document.getElementById("visits").innerHTML= visitCount;
    //id.innerText = new visitCount
}

showCount()