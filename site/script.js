function getCount(url) {
    fetch(url)
        .then(response =>response.json())
        .then(data => {
            var visitCount = JSON.stringify(data.body.Item.visits)
            document.getElementById("visits").innerHTML=visitCount
        })
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

