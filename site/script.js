function getCount(url) {
    fetch(url)
        .then(response =>response.json())
        .then(data => data.body.Item.visits)
    return JSON.stringify(data)
}

fetch('https://api.aaronlangley.net/updateCount');

console.log(getCount('https://api.aaronlangley.net/getCount'));

visitorCount = "1"
