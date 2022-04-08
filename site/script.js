function updateCount() {
    var update = new XMLHttpRequest()
    update.open('GET', 'https://api.aaronlangley.net/updateCount/', true)
    update.setRequestHeader("Content-Type", "application/json");
    update.send()
}

//document.getElementById("visits").innerHTML = "1";

function getCount() {
    var get = new XMLHttpRequest()
    get.open('GET', 'https://api.aaronlangley.net/getCount/', true)
    get.setRequestHeader("Content-Type", "application/json");
    response = get.send()
    const obj = JSON.parse(response)
    visitCount = obj.visits
    return visitCount
    //const id    = document.getElementById("visits").innerHTML= visitCount;
    //id.innerText = new visitCount.visits
}

updateCount()
getCount()
