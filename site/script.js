function getCount(url) {
    fetch(url)
        .then(response =>response.json())
        .then(data => JSON.stringify(data.body.Item.visits))
        .then(document.getElementById("visits").innerHTML=data)
    r
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

