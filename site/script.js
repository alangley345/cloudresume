function updateCount() {
    var update = new XMLHttpRequest()
    update.open('GET', 'https://api.aaronlangley.net/updateCount', true)
    update.setRequestHeader("Content-Type", "application/json");
    update.send();
}

//document.getElementById("visits").innerHTML = "1";

function getCount() {
    var get = new XMLHttpRequest()
    get.open('GET', 'https://api.aaronlangley.net/getCount', true)
    get.setRequestHeader("Content-Type", "application/json");
    get.send();
}

updateCount()
visitCount = getCount()
