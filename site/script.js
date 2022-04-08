function updateCount() {
    fetch('https://api.aaronlangley.net/updateCount')
}

//document.getElementById("visits").innerHTML = "1";

function getCount() {
    var get = new XMLHttpRequest()
    get.open('GET', 'https://api.aaronlangley.net/getCount', true)
    get.setRequestHeader("Content-Type", "application/json");
    get.send();
    return get.responseXML
}

updateCount()
getCount()
visitCount = 'testing'

