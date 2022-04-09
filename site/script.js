function getCount(url) {
    fetch(url)
        .then(response =>response.json())
        .then(data => {
            var vistitCount = JSON.stringify(data.body.Item.visits)
            document.getElementById("visits").innerHTML=vistitCount
        })
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

