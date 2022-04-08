function getCount(url) {
    fetch(url)
        .then(response =>response.json())
        .then(data => data.body.Item.visits)
    return console.log(JSON.stringify(data))
}

fetch('https://api.aaronlangley.net/updateCount');
getCount('https://api.aaronlangley.net/getCount');

visitCount = "1"
